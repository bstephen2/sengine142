
/*
 *	bmove.c
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
 *	This is the module for classifying black moves.
 */

#include "sengine.h"
#include "utarray.h"
#include "utstring.h"
#undef NDEBUG

extern char pieces[];
extern char* lab_check;
extern char* lab_kcast;
extern char* lab_qcast;
extern char* lab_p_flight;
extern char* lab_s_flight;
int featsort(const void* a, const void* b);
char get_piece_type(enum COLOUR, BOARD*, unsigned char);
void update_id_board(enum COLOUR, BOARD*, ID_BOARD*, ID_BOARD*);
UT_string* get_mate_class(BOARD*, BOARD*, ID_BOARD*);
void add_var(char*);
void add_refut(char*);

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

            if (mates == 2) {
                // Treat promotion to Q/R or Q/B as non dual.
                BOARDLIST* bl = elt->nextply;
                BOARD* m1 = bl->vektor;
                BOARD* m2 = bl->vektor->next;

                if ((m1->mover == PAWN) && (m2->mover == PAWN)) {
                    if ((m1->from == m2->from) && (m1->to == m2->to)) {
                        if ((m1->promotion == QUEEN) && ((m2->promotion == ROOK) || (m2->promotion == BISHOP))) {
                            // Allowable dual - delete underpromotion.
                            LL_DELETE(m1, m2);
                            mates--;
                        }
                    }
                }
            }
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
            utstring_printf(var, "%c(%c);", piece, id);

            // Identify black features
            utstring_new(bfeat);

            if (elt->check == true) {
                //CHECK
                utarray_push_back(bfeats, &lab_check);
            }

            if (elt->captured == true) {
                //XTURE[QRBSP](id)
                UT_string* capstr;
                utstring_new(capstr);
                char cid = inIdBrd->white_ids[elt->to];
                char pid = get_piece_type(WHITE, inBrd, elt->to);
                utstring_printf(capstr, "X%c(%c)", pid, cid);
                utarray_push_back(bfeats, &(utstring_body(capstr)));
                utstring_free(capstr);
            }

            PIN_STATUS* ps = get_pin_status();
            populate_pin_status(ps, inBrd, elt, inIdBrd, bmIdBoard);

            if (strcmp(utstring_body(ps->b_before), utstring_body(ps->b_after)) != 0) {
                char* haystack;
                char* needle;
                char temp;

                //P_SPIN([KQRBSP])
                haystack = utstring_body(ps->b_before);
                needle = utstring_body(ps->b_after);

                while (*needle != '\0') {
                    temp = *(needle + 2);
                    *(needle + 2) = '\0';

                    if (strstr(haystack, needle) == NULL) {
                        UT_string* p;
                        utstring_new(p);
                        utstring_printf(p, "P_SPIN%c(%c)", *needle, *(needle + 1));
                        utarray_push_back(bfeats, &(utstring_body(p)));
                        utstring_free(p);
                    }

                    *(needle + 2) = temp;

                    needle += 2;
                }

                //N_SPIN([KQRBSP])
                haystack = utstring_body(ps->b_after);
                needle = utstring_body(ps->b_before);

                while (*needle != '\0') {
                    temp = *(needle + 2);
                    *(needle + 2) = '\0';

                    if (strstr(haystack, needle) == NULL) {
                        UT_string* p;
                        utstring_new(p);
                        utstring_printf(p, "N_SPIN%c(%c)", *needle, *(needle + 1));
                        utarray_push_back(bfeats, &(utstring_body(p)));
                        utstring_free(p);
                    }

                    *(needle + 2) = temp;

                    needle += 2;
                }
            }

            if (strcmp(utstring_body(ps->w_before), utstring_body(ps->w_after)) != 0) {
                char* haystack;
                char* needle;
                char temp;

                //P-PIN([KQRBSP])
                haystack = utstring_body(ps->w_before);
                needle = utstring_body(ps->w_after);

                while (*needle != '\0') {
                    temp = *(needle + 2);
                    *(needle + 2) = '\0';

                    if (strstr(haystack, needle) == NULL) {
                        UT_string* p;
                        utstring_new(p);
                        utstring_printf(p, "P_PIN%c(%c)", *needle, *(needle + 1));
                        utarray_push_back(bfeats, &(utstring_body(p)));
                        utstring_free(p);
                    }

                    *(needle + 2) = temp;

                    needle += 2;
                }

                //N-PIN([KQRBSP])
                haystack = utstring_body(ps->w_after);
                needle = utstring_body(ps->w_before);

                while (*needle != '\0') {
                    temp = *(needle + 2);
                    *(needle + 2) = '\0';

                    if (strstr(haystack, needle) == NULL) {
                        UT_string* p;
                        utstring_new(p);
                        utstring_printf(p, "N_PIN%c(%c)", *needle, *(needle + 1));
                        utarray_push_back(bfeats, &(utstring_body(p)));
                        utstring_free(p);
                    }

                    *(needle + 2) = temp;

                    needle += 2;
                }
            }

            free_pin_status(ps);

            //OGATE
            //If mating piece not pinned and mating move not possible before black move.
            //S_BLOCK
            //If bK would escape to blocked square if mate were played before black move.
            //P_CUT([KQRBSP])
            //N_CUT([KQRBSP])
            //P_SCUT([KQRBSP])
            //N_SCUT([KQRBSP])
            //P-GUARD of mating square(s)
            //N-GUARD of mating square(s)

            //EP
            if (elt->ep == true) {
                char* ep = "EP";
                utarray_push_back(bfeats, &ep);
            }

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
                UT_string* wm = get_mate_class(elt, elt->nextply->vektor, bmIdBoard);
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

