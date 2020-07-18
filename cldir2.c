
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
void add_added(int);
void add_removed(int);
void add_changed(int);

static void do_statics(DIR_SOL*, BOARD*);
static void do_sets(DIR_SOL*, BOARD*);
static void do_virtual(DIR_SOL*, BOARD*);
static void do_actual(DIR_SOL*, BOARD*);
static int get_set_size(DIR_SOL*);
static bool set_complete(DIR_SOL*, BOARD*);
static void get_changed_and_removed_mates(DIR_SOL*);
static void get_added_mates(DIR_SOL*);
static bool mate_equals(BOARD*, BOARD*);
static bool black_equals(BOARD*, BOARD*);

static int ChangedMates = 0;
static int AddedMates = 0;
static int RemovedMates = 0;

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
    get_changed_and_removed_mates(insol);
    get_added_mates(insol);
    int SetSize = get_set_size(insol);

    start_static_class_xml();
    add_changed(ChangedMates);
    add_added(AddedMates);
    add_removed(RemovedMates);

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

void get_changed_and_removed_mates(DIR_SOL* insol)
{
    // Iterate round set variations counting changed and removed.
    // Only inspect variations that are dual-free in set and actual.

    if (insol->set->vektor != NULL) {
        BOARD* elt;

        LL_FOREACH(insol->set->vektor, elt) {
            int mateCount;
            BOARD* tp;
            BOARDLIST* setMates = elt->nextply;
            LL_COUNT(setMates->vektor, tp, mateCount);

            if (mateCount == 1) {
                bool found = false;
            }
        }
    }

    /*
    while (i.hasNext() == true) {
    	var = (Move) i.next();
    	setMates = var.getNext();

    	if (setMates.size() == 1) {
    		found = false;
    		j = blackDefences.iterator();
    		L1:

    		while (j.hasNext() == true) {
    			defence = (Move) j.next();

    			if (var.Blackequals(defence) == true) {
    				actualMates = defence.getNext();

    				if (actualMates.size() == 1) {
    					found = true;
    					sMate = (Move) setMates.get(0);
    					aMate = (Move) actualMates.get(0);

    					if (sMate.mateEquals(aMate) == false) {
    						changedMates++;
    					}

    					break L1;
    				}
    			}
    		}

    		if (found == false) {
    			removedMates++;
    		}
    	}
    }
    */
    return;
}

void get_added_mates(DIR_SOL* insol)
{
    // Iterate round actual variations counting added mates.
    // Inspect dual-free variations only.
    /*
    while (i.hasNext() == true) {
    	defence = (Move) i.next();
    	actualMates = defence.getNext();

    	if (actualMates.size() == 1) {
    		found = false;
    		j = setBlack.iterator();
    		L2:

    		while (j.hasNext() == true) {
    			var = (Move) j.next();

    			if (var.Blackequals(defence) == true) {
    				setMates = var.getNext();

    				if (setMates.size() == 1) {
    					found = true;
    					break L2;
    				}
    			}
    		}

    		if (found == false) {
    			addedMates++;
    		}
    	}
    }
    */

    return;
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


