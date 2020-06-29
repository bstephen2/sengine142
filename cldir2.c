
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

void class_direct_2(DIR_SOL* insol, BOARD* inBrd)
{
    start_class_2_xml();
    start_static_class_xml();
    end_static_clas_xml();
    start_set_class_xml();
    end_set_class_xml();
    start_virtual_class_xml();
    end_virtual_class_xml();
    start_actual_class_xml();
    end_actual_class_xml();
    end_class_2_xml();

    return;
}
