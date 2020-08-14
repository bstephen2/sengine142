
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
#undef NDEBUG

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
void start_try();
void end_try();
void add_key(char*);
void add_threat(char*);
void add_refut(char*);
char get_piece_type(enum COLOUR, BOARD*, unsigned char);
void update_id_board(enum COLOUR, BOARD*, ID_BOARD*, ID_BOARD*);
void get_check_square_list(enum COLOUR, BOARD*, CHECK_SQUARE_LIST*);

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
static UT_string* get_mate_class(BOARD*, ID_BOARD*);
static void classify_white_move(BOARD*, BOARD*, ID_BOARD*);
static void classify_threats(BOARDLIST*, ID_BOARD*);

static int ChangedMates = 0;
static int AddedMates = 0;
static int RemovedMates = 0;
static int UpFlights = 0;
static int UpChecks = 0;
static int UpFgivers = 0;
static int UpCaps = 0;
static int TotUp = 0;
static char pieces[] = "0PSBRQK";
static char* lab_check = "CHECK";
static char* lab_kcast = "0-0";
static char* lab_qcast = "0-0-0";
static char* lab_p_flight = "P-FLIGHT";
static char* lab_s_flight = "S_FLIGHT";

int featsort(const void* a, const void* b)
{
    char** aa = (char**) a;
    char** bb = (char**) b;

#ifdef MOVESTAT
    fprintf(stderr, "%s\n%s\n\n", *aa, *bb);
#endif

    return strcmp(*aa, *bb);
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
#ifndef NDEBUG
    fputs("do_sets()\n", stderr);
#endif
    start_set_class_xml();
    classify_vars(insol->set, inBrd, in_Idb);
    end_set_class_xml();

    return;
}

void do_virtual(DIR_SOL* insol, BOARD* inBrd, ID_BOARD* in_Idb)
{
#ifndef NDEBUG
    fputs("do_virtual()\n", stderr);
#endif
    BOARDLIST* tries = insol->tries;
    BOARD* elt;

    start_virtual_class_xml();

    LL_FOREACH(tries->vektor, elt) {
        start_try();
        classify_white_move(inBrd, elt, in_Idb);
        ID_BOARD* newIB = cloneIdBoard(in_Idb);
        update_id_board(WHITE, elt, in_Idb, newIB);

        if (elt->threat != NULL) {
            classify_threats(elt->threat, newIB);
        }

        classify_vars(elt->nextply, elt, newIB);
        freeIdBoard(newIB);
        end_try();
    }

    end_virtual_class_xml();

    return;
}

void do_actual(DIR_SOL* insol, BOARD* inBrd, ID_BOARD* in_Idb)
{
#ifndef NDEBUG
    fputs("do_actual()\n", stderr);
#endif
    BOARD* wkey = insol->keys->vektor;
    start_actual_class_xml();
    classify_white_move(inBrd, wkey, in_Idb);
    ID_BOARD* newIB = cloneIdBoard(in_Idb);
    update_id_board(WHITE, wkey, in_Idb, newIB);

    if (wkey->threat != NULL) {
        classify_threats(wkey->threat, newIB);
    }

    classify_vars(wkey->nextply, wkey, newIB);
    freeIdBoard(newIB);
    end_actual_class_xml();

    return;
}

void classify_threats(BOARDLIST* threats, ID_BOARD* in_Idb)
{
#ifndef NDEBUG
    fputs("classify_threats()\n", stderr);
#endif
    unsigned int count;
    BOARD* elt;

    LL_COUNT(threats->vektor, elt, count);

    if (count == 1) {
        UT_string* s = get_mate_class(threats->vektor, in_Idb);
        add_threat(utstring_body(s));
        utstring_free(s);
    } else {
        UT_string* d;
        utstring_new(d);
        utstring_printf(d, "DUALS(%u)", count);
        add_threat(utstring_body(d));
        utstring_free(d);
    }

    return;
}

void classify_white_move(BOARD* initBrd, BOARD* wm, ID_BOARD* inIdBrd)
{
#ifndef NDEBUG
    fputs("classify_white_move()\n", stderr);
#endif
    UT_string* var;
    UT_array* wfeats;
    UT_string* wfeat;
    char** p;

    utstring_new(var);
    utstring_new(wfeat);
    utarray_new(wfeats, &ut_str_icd);

    char piece = pieces[wm->mover];
    char id = inIdBrd->white_ids[wm->from];
    utstring_printf(var, "%c(%c);", piece, id);

    if (wm->check == true) {
        //CHECK
        utarray_push_back(wfeats, &lab_check);
    }

    if (wm->captured == true) {
        //CAP[QRBSP](id)
        UT_string* capstr;
        utstring_new(capstr);
        char cid = inIdBrd->black_ids[wm->to];
        char pid = get_piece_type(BLACK, initBrd, wm->to);
        utstring_printf(capstr, "CAP%c(%c)", pid, cid);
        utarray_push_back(wfeats, &(utstring_body(capstr)));
        utstring_free(capstr);
    }

    //EP
    //P-PIN([KQRBSP])
    //N-PIN([KQRBSP])
    //P_SPIN([KQRBSP])
    //N_SPIN([KQRBSP])
    //P_CUT([KQRBSP])
    //N_CUT([KQRBSP])
    //P_SCUT([KQRBSP])
    //N_SCUT([KQRBSP])
    //P-GUARD of mating square(s)
    //N-GUARD of mating square(s)
    //F-GIVER(n)
    //F_TAKER(n)

    if (wm->mover == KING) {
        int diff;

        diff = abs(wm->from - wm->to);

        if ((diff == 8) || (diff == 1)) {
            utarray_push_back(wfeats, &lab_p_flight);
        } else if ((diff == 7) || (diff == 9)) {
            utarray_push_back(wfeats, &lab_s_flight);
        } else if ((wm->from == 4) && (wm->to == 6)) {
            utarray_push_back(wfeats, &lab_kcast);
        } else if ((wm->from == 4) && (wm->to == 2)) {
            utarray_push_back(wfeats, &lab_qcast);
        }
    }

    utarray_sort(wfeats, featsort);
    // Add white features to var
    unsigned int bf = utarray_len(wfeats);
    unsigned int bfc = 0;
    p = NULL;

    while ((p = (char**)utarray_next(wfeats, p))) {
        bfc++;

        if (bfc == bf) {
            utstring_printf(var, "%s", *p);
        } else {
            utstring_printf(var, "%s,", *p);
        }
    }


    add_key(utstring_body(var));

    utstring_free(var);
    utstring_free(wfeat);
    utarray_free(wfeats);

    return;
}
void classify_vars(BOARDLIST* blist, BOARD* inBrd, ID_BOARD* inIdBrd)
{
#ifndef NDEBUG
    fputs("classify_vars()\n", stderr);
#endif

    assert(bList != NULL);
    assert(inBrd != NULL);
    assert(inIdBrd != NULL);

    BOARD* elt;
    HASH_VAR* vars = NULL;
    HASH_VAR* s;
    HASH_VAR* tmp;
    UT_string* refut;
    utstring_new(refut);

    LL_FOREACH(blist->vektor, elt) {
        unsigned int mates;
        BOARD* m;

        if (elt->nextply != NULL) {
            LL_COUNT(elt->nextply->vektor, m, mates);
        } else {
            mates = 0;
        }

        // Don't bother with dualled variations
        if (mates <= 1) {
#ifndef NDEBUG
            fprintf(stderr, "VAR: mates = %d\n", mates);
#endif
            UT_array* bfeats;
            UT_string* var;
            UT_string* bfeat;
            char** p;
            ID_BOARD* bmIdBoard = cloneIdBoard(inIdBrd);
            update_id_board(BLACK, elt, inIdBrd, bmIdBoard);
            utstring_new(var);
            utarray_new(bfeats, &ut_str_icd);

            // Identify black mover and add to var.

            char piece = pieces[elt->mover];
            char id = inIdBrd->black_ids[elt->from];
            utstring_printf(var, "%c(%c)", piece, id);

            // Identify black features
            utstring_new(bfeat);

            if (elt->check == true) {
                //CHECK
                utarray_push_back(bfeats, &lab_check);
            }

            if (elt->captured == true) {
                //CAPTURE[QRBSP](id)
                UT_string* capstr;
                utstring_new(capstr);
                char cid = inIdBrd->white_ids[elt->to];
                char pid = get_piece_type(WHITE, inBrd, elt->to);
                utstring_printf(capstr, "CAP%c(%c)", pid, cid);
                utarray_push_back(bfeats, &(utstring_body(capstr)));
                utstring_free(capstr);
            }

            //EP
            //P-PIN([KQRBSP])
            //N-PIN([KQRBSP])
            //P_SPIN([KQRBSP])
            //N_SPIN([KQRBSP])
            //P_CUT([KQRBSP])
            //N_CUT([KQRBSP])
            //P_SCUT([KQRBSP])
            //N_SCUT([KQRBSP])
            //P-GUARD of mating square(s)
            //N-GUARD of mating square(s)
            //F-GIVER(n)
            //F_TAKER(n)

            if (elt->mover == KING) {
                int diff;

                diff = abs(elt->from - elt->to);

                if ((diff == 8) || (diff == 1)) {
                    utarray_push_back(bfeats, &lab_p_flight);
                } else if ((diff == 7) || (diff == 9)) {
                    utarray_push_back(bfeats, &lab_s_flight);
                } else if ((elt->from == 60) && (elt->to == 62)) {
                    utarray_push_back(bfeats, &lab_kcast);
                } else if ((elt->from == 60) && (elt->to == 58)) {
                    utarray_push_back(bfeats, &lab_qcast);
                }
            }

            // Sort black features
            utarray_sort(bfeats, featsort);
            // Add black features to var
            unsigned int bf = utarray_len(bfeats);
            unsigned int bfc = 0;
            p = NULL;

            while ((p = (char**)utarray_next(bfeats, p))) {
                bfc++;

                if (bfc == bf) {
                    utstring_printf(var, "%s", *p);
                } else {
                    utstring_printf(var, "%s,", *p);
                }
            }

            // Identify white mover and mate details and add to var

            if (mates == 1) {
                UT_string* wm = get_mate_class(elt->nextply->vektor, bmIdBoard);
                utstring_printf(var, ":");
                utstring_concat(var, wm);
                utstring_free(wm);

                // Add var classification if unique so far.
                HASH_FIND_STR(vars, utstring_body(var), s);

                if (s == NULL) {
                    s = (HASH_VAR*) malloc(sizeof(HASH_VAR));
                    SENGINE_MEM_ASSERT(s);
                    s->class = strdup(utstring_body(var));
                    HASH_ADD_KEYPTR(hh, vars, s->class, strlen(s->class), s);
                }
            } else {
                utstring_concat(refut, var);
            }

            utstring_free(var);
            utstring_free(bfeat);
            utarray_free(bfeats);
            freeIdBoard(bmIdBoard);
        }
    }

    // Add var classifications to xml and free from uthash.
    HASH_ITER(hh, vars, s, tmp) {
        add_var(s->class);
        HASH_DEL(vars, s);
        free(s->class);
        free(s);
    }

    if (utstring_len(refut) > 0) {
        add_refut(utstring_body(refut));
    }

    utstring_free(refut);

    return;
}

UT_string* get_mate_class(BOARD* inBrd, ID_BOARD* idBrd)
{
#ifndef NDEBUG
    fputs("get_mate_class()\n", stderr);
#endif
    UT_string* s;
    CHECK_SQUARE_LIST* csl = getCSL();
    utstring_new(s);
    char id = idBrd->white_ids[inBrd->from];
    int bkpos = (int) inBrd->pos->kingsq[BLACK];
    get_check_square_list(WHITE, inBrd, csl);

    if (inBrd->mover == QUEEN) {
        int qpos = (int) inBrd->to;
        int dist = (int) abs(bkpos - qpos);

        if ((dist == 1) || (dist == 8)) {
            utstring_printf(s, "QAR1(%c)", id);
        } else if ((dist == 2) || (dist == 16)) {
            utstring_printf(s, "QAR2(%c)", id);
        } else if ((dist == 7) || (dist == 9)) {
            utstring_printf(s, "QAB1(%c)", id);
        } else if (((dist % 7) == 0) || ((dist % 9) == 0)) {
            utstring_printf(s, "QAB(%c)", id);
        } else {
            utstring_printf(s, "QAR(%c)", id);
        }
    } else if (inBrd->mover == KING) {
        assert(csl->count == 1);
        char bpid = idBrd->white_ids[csl->square[0]];

        if ((inBrd->from == 4) && (inBrd->to == 6)) {
            utstring_printf(s, "0-0");
        } else if ((inBrd->from == 4) && (inBrd->to == 2)) {
            utstring_printf(s, "0-0-0");
        } else if (csl->real_piece[0] == ROOK) {
            utstring_printf(s, "R(%c)+K(%c)BAT", bpid, id);
        } else if (csl->real_piece[0] == BISHOP) {
            utstring_printf(s, "B(%c)+K(%c)BAT", bpid, id);
        } else {
            // must be QUEEN
            if (csl->as_piece[0] == ROOK) {
                utstring_printf(s, "QAR(%c)+K(%c)BAT", bpid, id);
            } else {
                // must be BISHOP
                utstring_printf(s, "QAB(%c)+K(%c)BAT", bpid, id);
            }
        }

    } else if (inBrd->mover == ROOK) {
        if ((csl->count == 1) && (csl->real_piece[0] == ROOK)) {
            utstring_printf(s, "R(%c)", id);
        } else {
            // Battery
            utstring_printf(s, "+R(%c)", id);
        }
    } else if (inBrd->mover == BISHOP) {
        if ((csl->count == 1) && (csl->real_piece[0] == BISHOP)) {
            utstring_printf(s, "B(%c)", id);
        } else {
            // Battery
            utstring_printf(s, "+B(%c)", id);
        }
    } else if (inBrd->mover == KNIGHT) {
        if ((csl->count == 1) && (csl->real_piece[0] == KNIGHT)) {
            utstring_printf(s, "S(%c)", id);
        } else {
            // Battery.
            if (csl->count == 1) {
                // Check must be from rear-piece.
                char bpid = idBrd->white_ids[csl->square[0]];

                if (csl->as_piece[0] == ROOK) {

                    if (csl->real_piece[0] == ROOK) {
                        utstring_printf(s, "R(%c)+S(%c)", bpid, id);
                    } else {
                        assert(cst->read_piece[0] == QUEEN);
                        utstring_printf(s, "QAR(%c)+S(%c)", bpid, id);
                    }
                } else {
                    assert(csl->as_piece[0] == BISHOP);

                    if (csl->real_piece[0] == BISHOP) {
                        utstring_printf(s, "B(%c)+S(%c)", bpid, id);
                    } else {
                        assert(cst->read_piece[0] == QUEEN);
                        utstring_printf(s, "QAB(%c)+S(%c)", bpid, id);
                    }
                }
            } else {
                // Must be double-check.
                assert(csl->count == 2);
                assert(csl->real_piece[0] == KNIGHT);
                char bpid = idBrd->white_ids[csl->square[1]];

                if (csl->as_piece[1] == ROOK) {

                    if (csl->real_piece[1] == ROOK) {
                        utstring_printf(s, "R(%c)+S(%c),DCHECK", bpid, id);
                    } else {
                        assert(cst->read_piece[1] == QUEEN);
                        utstring_printf(s, "QAR(%c)+S(%c),DCHECK", bpid, id);
                    }
                } else {
                    assert(csl->as_piece[1] == BISHOP);

                    if (csl->real_piece[1] == BISHOP) {
                        utstring_printf(s, "B(%c)+S(%c),DCHECK", bpid, id);
                    } else {
                        assert(cst->read_piece[1] == QUEEN);
                        utstring_printf(s, "QAB(%c)+S(%c),DCHECK", bpid, id);
                    }
                }
            }
        }
    } else {
        assert(inBrd->mover == PAWN);

        if ((csl->count == 1) && (csl->real_piece[0] == PAWN)) {
            utstring_printf(s, "P(%c)", id);
        } else {
            utstring_printf(s, "+P(%c)", id);
        }
    }

    //([QRB]-[KRBSP])BAT(EP)*
    //([QRB]-[KRBSP])IND_BAT(EP)*
    //([QRBSP]-[QRBSP])DCHECK
    //[BS]
    //P(EP)*
    //R
    //R1

    freeCSL(csl);

    return s;
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


