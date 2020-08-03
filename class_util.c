
/*
 *	class_util.c
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
 *	This is the module for utility routines for classifying directmates in two.
 */

#include "sengine.h"

static const unsigned char w_ids[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
static const unsigned char b_ids[] = "abcdefghijklmnopqrstuvwxyz";

void setup_id_board(BOARD* inBrd, ID_BOARD* idBrd)
{
    return;
}