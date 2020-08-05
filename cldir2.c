
/*
 *	cldir2.c
 *	(c) 2020, Brian Stephenson
 *	brian@bstephen.me.uk
 *
 *	A program to test orthodox chess problems of the types:
 *
 *		directmates
 *		selfmates
 *		relfexmates
 *		helpmates
 *
 *	Input is taken from the program options and output is xml on stdout.
 *
 *	This is the module for classifying directmates in two.
 */

#include "sengine.h"
#include "utarray.h"
#include "utstring.h"

void setup_id_board(BOARD*, ID_BOARD*);

void start_class_2_xml(void);
void end_class_2_xml(void);
void start_static_class_xml(void);
void end_static_clas_xml(void);
void start_set_class_xml(void);
void end_set_class_xml(void);
void start_virtual_class_xml(void);
void end_virtual_class_xml(void);
void start_actual_class_xml(void);
void end_actual_class_xml(void);
void add_static_type(char*);
void add_added(int);
void add_removed(int);
void add_changed(int);
void add_up_flights(int);
void add_up_checks(int);
void add_up_fgivers(int);
void add_up_caps(int);
void add_tot_up(int);
void add_var(char*);

static void do_statics(DIR_SOL*, BOARD*);
static void do_sets(DIR_SOL*, BOARD*, ID_BOARD*);
static void do_virtual(DIR_SOL*, BOARD*, ID_BOARD*);
static void do_actual(DIR_SOL*, BOARD*, ID_BOARD*);
static int get_set_size(DIR_SOL*);
static void get_changed_and_removed_mates(DIR_SOL*);
static void get_added_mates(DIR_SOL*);
static bool mate_equals(BOARD*, BOARD*);
static bool black_equals(BOARD*, BOARD*);
static bool is_flight_giver(BOARD*, unsigned int);
static bool is_provided(BOARD*, BOARDLIST*);
static void classify_vars(BOARDLIST*, BOARD*, ID_BOARD*);

static int ChangedMates = 0;
static int AddedMates = 0;
static int RemovedMates = 0;
static int UpFlights = 0;
static int UpChecks = 0;
static int UpFgivers = 0;
static int UpCaps = 0;
static int TotUp = 0;
static char pieces[] = "0PSBRQK";

int featsort(const void* a, const void* b)
{
    char* aa = (char*) a;
    char* bb = (char*) b;

    return strcmp(aa, bb);
}
void class_direct_2(DIR_SOL* insol, BOARD* inBrd)
{
    ID_BOARD* p_init_idbd;

    start_class_2_xml();

    do_statics(insol, inBrd);

    p_init_idbd = getIdBoard();
    setup_id_board(inBrd, p_init_idbd);

#ifdef MOVESTAT
    fprintf(stderr, "WHITE_ID => %s\n", p_init_idbd->white_ids);
    fprintf(stderr, "BLACK_ID => %s\n", p_init_idbd->black_ids);
#endif

    do_sets(insol, inBrd, p_init_idbd);
    do_virtual(insol, inBrd, p_init_idbd);
    do_actual(insol, inBrd, p_init_idbd);

    freeIdBoard(p_init_idbd);

    end_class_2_xml();

    return;
}

void do_statics(DIR_SOL* insol, BOARD* inBrd)
{
    BOARDLIST* bList;
    unsigned int flights;
    int set_count;
    int set_full_count;
    bool set_complete = false;

    start_static_class_xml();
    bList = generateBlackBoardlist(inBrd, 1, &flights);

    if (insol->set->vektor != NULL) {
        BOARD* elt;

        if (bList->vektor != NULL) {
            LL_COUNT(insol->set->vektor, elt, set_count);
            LL_COUNT(bList->vektor, elt, set_full_count);

            set_complete = (set_count == set_full_count) ? true : false;
        }
    }

    /*
      * Classify type
      */

    if (inBrd->check == false) {
        get_changed_and_removed_mates(insol);
        get_added_mates(insol);
        int SetSize = get_set_size(insol);

        add_changed(ChangedMates);
        add_added(AddedMates);
        add_removed(RemovedMates);

        if (insol->keys->vektor->check == true) {
            add_static_type("CHECKING_KEY");
        } else if (insol->keys->vektor->threat == NULL) {

            if ((SetSize > 0) && (set_complete == true)) {

                if (ChangedMates > 0) {
                    add_static_type("MUTATE");
                } else {
                    add_static_type("WAITER");
                }
            } else {
                add_static_type("INCOMPLETE_BLOCK");
            }
        } else {
            if ((SetSize > 0) && (set_complete == true)) {
                add_static_type("BLOCK_THREAT");
            } else {
                add_static_type("THREAT");
            }
        }

    } else {
        add_static_type("WHITE_IN_CHECK");
    }

    /*
      * Count strong unprovided moves.
      */

    {
        BOARD* elt;
        BOARDLIST* sets = insol->set;

        LL_FOREACH(bList->vektor, elt) {

            if (elt->mover == KING) {
                if (is_provided(elt, sets) == false) {
                    UpFlights++;
                    TotUp++;
                }
            } else if (elt->check == true) {
                if (is_provided(elt, sets) == false) {
                    UpChecks++;
                    TotUp++;
                }
            } else if (elt->captured == true) {
                if (is_provided(elt, sets) == false) {
                    UpCaps++;
                    TotUp++;
                }
            } else if (is_flight_giver(elt, flights) == true) {
                if (is_provided(elt, sets) == false) {
                    UpFgivers++;
                    TotUp++;
                }
            }
        }
    }

    add_up_flights(UpFlights);
    add_up_checks(UpChecks);
    add_up_fgivers(UpFgivers);
    add_up_caps(UpCaps);
    add_tot_up(TotUp);

    end_static_clas_xml();

    freeBoardlist(bList);

    return;
}

bool is_provided(BOARD* inBrd, BOARDLIST* sets)
{
    BOARD* elt;
    bool rc = false;

    LL_FOREACH(sets->vektor, elt) {

        if ((inBrd->from == elt->from) && (inBrd->to == elt->to)) {
            rc = true;
            break;
        }
    }

    return rc;
}

bool is_flight_giver(BOARD* inBrd, unsigned int inFlights)
{
    unsigned int flights;

    BOARDLIST* bList = generateBlackBoardlist(inBrd, 1, &flights);
    freeBoardlist(bList);

    return (flights > inFlights) ? true : false;
}

int get_set_size(DIR_SOL* insol)
{
    BOARD* elt;
    int rc = 0;

    if (insol->set->vektor != NULL) {
        LL_COUNT(insol->set->vektor, elt, rc);
    }

    return rc;
}

void get_changed_and_removed_mates(DIR_SOL* insol)
{
    // Iterate round set variations counting changed and removed.
    // Only inspect variations that are dual-free in set and actual.

    if (insol->set->vektor != NULL) {
        BOARDLIST* defences = insol->keys->vektor->nextply;
        BOARD* setDefence;

        LL_FOREACH(insol->set->vektor, setDefence) {
            int mateCount;
            BOARD* tp;
            BOARDLIST* setMates = setDefence->nextply;
            LL_COUNT(setMates->vektor, tp, mateCount);

            if (mateCount == 1) {
                bool found = false;
                BOARD* setMate = setMates->vektor;
                BOARD* defence;

                LL_FOREACH(defences->vektor, defence) {

                    if (black_equals(setDefence, defence) == true) {
                        int aMateCount;
                        BOARDLIST* actualMates = defence->nextply;
                        BOARD* tp1;
                        LL_COUNT(actualMates->vektor, tp1, aMateCount);

                        if (aMateCount == 1) {
                            found = true;

                            if (mate_equals(setMate, actualMates->vektor) == false) {
                                ChangedMates++;
                            }

                            break;
                        }
                    }
                }

                if (found == false) {
                    RemovedMates++;
                }
            }
        }
    }

    return;
}

void get_added_mates(DIR_SOL* insol)
{
    // Iterate round actual variations counting added mates.
    // Inspect dual-free variations only.

    BOARDLIST* defences = insol->keys->vektor->nextply;
    BOARDLIST* setVars = insol->set;
    BOARD* defence;

    LL_FOREACH(defences->vektor, defence) {
        int MateCount;
        BOARD* tp1;
        BOARDLIST* mates = defence->nextply;
        LL_COUNT(mates->vektor, tp1, MateCount);

        if (MateCount == 1) {
            bool found = false;
            BOARD* setVar;

            LL_FOREACH(setVars->vektor, setVar) {

                if (black_equals(defence, setVar) == true) {
                    int ccount;
                    BOARD* tp2;
                    BOARDLIST* setMates = setVar->nextply;
                    LL_COUNT(setMates->vektor, tp2, ccount);

                    if (ccount == 1) {
                        found = true;
                        break;
                    }
                }
            }

            if (found == false) {
                AddedMates++;
            }
        }
    }

    return;
}

void do_sets(DIR_SOL* insol, BOARD* inBrd, ID_BOARD* in_Idb)
{
    start_set_class_xml();
    classify_vars(insol->set, inBrd, in_Idb);
    end_set_class_xml();

    return;
}

void do_virtual(DIR_SOL* insol, BOARD* inBrd, ID_BOARD* in_Idb)
{
    start_virtual_class_xml();
    end_virtual_class_xml();

    return;
}

void do_actual(DIR_SOL* insol, BOARD* inBrd, ID_BOARD* in_Idb)
{
    start_actual_class_xml();
    end_actual_class_xml();

    return;
}

void classify_vars(BOARDLIST* blist, BOARD* inBrd, ID_BOARD* inIdBrd)
{
    BOARD* elt;
    HASH_VAR* vars = NULL;
    HASH_VAR* s;
    HASH_VAR* tmp;

    LL_FOREACH(blist->vektor, elt) {

        unsigned int mates;
        BOARD* m;
        LL_COUNT(elt->nextply->vektor, m, mates);

        // Don't bother with dualled variations
        if (mates == 1) {
            UT_array* bfeats;
            UT_string* var;
            UT_string* bfeat;
            char** p;
            utstring_new(var);
            utarray_new(bfeats, &ut_str_icd);

            // Identify black mover and add to var.

            char piece = pieces[elt->mover];
            char id = inIdBrd->black_ids[elt->from];
            utstring_printf(var, "%c(%c);", piece, id);

            // Identify black features
            utstring_new(bfeat);
            //CHECK

            if (elt->check == true) {
                char* s = "CHECK";
                utarray_push_back(bfeats, &s);
            }

            //CAPTURE([QRBSP]
            //CASTLES
            //EP
            //P-PIN([KQRBSP])
            //N-PIN([KQRBSP])
            //P_SPIN([KQRBSP])
            //N_SPIN([KQRBSP])
            //P_CUT([KQRBSP])
            //N_CUT([KQRBSP])
            //P_SCUT([KQRBSP])
            //N_SCUT([KQRBSP])
            //P-FLIGHT
            //S-FLIGHT

            // Sort black features
            utarray_sort(bfeats, featsort);
            // Add black features to var
            p = NULL;

            while ((p = (char**)utarray_next(bfeats, p))) {
                utstring_printf(var, "%s,", *p);
            }

            // Identify white mover and mate details and add to var

            // Add var classification if unique so far.
            HASH_FIND_STR(vars, utstring_body(var), s);

            if (s == NULL) {
                s = (HASH_VAR*) malloc(sizeof(HASH_VAR));
                SENGINE_MEM_ASSERT(s);
                s->class = strdup(utstring_body(var));
                HASH_ADD_KEYPTR(hh, vars, s->class, strlen(s->class), s);
            }

            utstring_free(var);
            utstring_free(bfeat);
            utarray_free(bfeats);
        }
    }

    // Add var classifications to xml and free from uthash.
    HASH_ITER(hh, vars, s, tmp) {
        add_var(s->class);
        HASH_DEL(vars, s);
        free(s->class);
        free(s);
    }

    return;
}

bool mate_equals(BOARD* brda, BOARD* brdb)
{
    if (brda->mover != brdb->mover) return false;

    if (brda->to != brdb->to) return false;

    if (brda->from != brdb->from) return false;

    if (brda->promotion != brdb->promotion) return false;

    return true;
}

bool black_equals(BOARD* brda, BOARD* brdb)
{
    if (brda->mover != brdb->mover) return false;

    if (brda->from != brdb->from) return false;

    if (brda->to != brdb->to) return false;

    if (brda->promotion != brdb->promotion) return false;

    return true;
}


