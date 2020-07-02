
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

static void do_statics(DIR_SOL*, BOARD*);
static void do_sets(DIR_SOL*, BOARD*);
static void do_virtual(DIR_SOL*, BOARD*);
static void do_actual(DIR_SOL*, BOARD*);
static int get_set_size(DIR_SOL*);
static bool set_complete(DIR_SOL*, BOARD*);
static int get_changed_mates(DIR_SOL*);
static int get_added_mates(DIR_SOL*);
static int get_removed_mates(DIR_SOL*);

void class_direct_2(DIR_SOL* insol, BOARD* inBrd)
{
    start_class_2_xml();

    do_statics(insol, inBrd);
    do_sets(insol, inBrd);
    do_virtual(insol, inBrd);
    do_actual(insol, inBrd);

    end_class_2_xml();

    return;
}

void do_statics(DIR_SOL* insol, BOARD* inBrd)
{
    int ChangedMates = get_changed_mates(insol);
    int AddedMates = get_added_mates(insol);
    int RemovedMates = get_removed_mates(insol);
    int SetSize = get_set_size(insol);

    start_static_class_xml();

    if (insol->keys->vektor->check == true) {
        add_static_type("CHECKING_KEY");
    } else if (insol->keys->vektor->threat == NULL) {

        if ((SetSize > 0) && (set_complete(insol, inBrd) == true)) {

            if (ChangedMates > 0) {
                add_static_type("MUTATE");
            } else {
                add_static_type("WAITER");
            }
        } else {
            add_static_type("INCOMPLETE_BLOCK");
        }
    } else {
        if ((SetSize > 0) && (set_complete(insol, inBrd) == true)) {
            add_static_type("BLOCK_THREAT");
        } else {
            add_static_type("THREAT");
        }
    }

    end_static_clas_xml();

    return;
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

bool set_complete(DIR_SOL* insol, BOARD* inBrd)
{
    bool rc = false;

    if (insol->set->vektor != NULL) {
        BOARD* elt;
        unsigned int flights;
        int set_count;
        int set_full_count;
        BOARDLIST* bList = generateBlackBoardlist(inBrd, 1, &flights);

        if (bList->vektor != NULL) {
            LL_COUNT(insol->set->vektor, elt, set_count);
            LL_COUNT(bList->vektor, elt, set_full_count);

            rc = (set_count == set_full_count) ? true : false;
        }
        
        freeBoardlist(bList);
    }

    return rc;
}

int get_changed_mates(DIR_SOL* insol)
{
    return 1;
}

int get_added_mates(DIR_SOL* insol)
{
    return 1;
}

int get_removed_mates(DIR_SOL* insol)
{
    return 1;
}

void do_sets(DIR_SOL* insol, BOARD* inBrd)
{
    start_set_class_xml();
    end_set_class_xml();

    return;
}

void do_virtual(DIR_SOL* insol, BOARD* inBrd)
{
    start_virtual_class_xml();
    end_virtual_class_xml();

    return;
}

void do_actual(DIR_SOL* insol, BOARD* inBrd)
{
    start_actual_class_xml();
    end_actual_class_xml();

    return;
}


