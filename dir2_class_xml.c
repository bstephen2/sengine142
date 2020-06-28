
/*
 *	dir2_class_xml.c
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
 *	This is the module for preparing the xml output of classifications of directmates in two.
 * 
 * MesonClass
 * 	Static
 * 		Item
 * 	Set
 * 		Var
 * 	Tries
 * 		Try
 * 			Key
 * 			Threat
 * 			Var
 * 			Refut
 * 	Actual
 * 		Key
 * 		Threat
 * 		Var
 */

#include "sengine.h"
#include "genx.h"
