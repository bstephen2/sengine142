
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
 * 	Virtual
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

static genxWriter w;
static const unsigned char mc[] = "MesonClass";
static const unsigned char stat[] = "Static";
static const unsigned char set[] = "Set";
static const unsigned char var[] = "Var";
static const unsigned char virt[] = "Virtual";

static const unsigned char try[] = "Try";

static const unsigned char thr[] = "Threat";
static const unsigned char refut[] = "Refut";
static const unsigned char act[] = "Actual";
static const unsigned char key[] = "Key";

void start_class_2_xml()
{
    w = genxNew(NULL, NULL, NULL);
    (void) genxStartDocFile(w, stdout);
    (void) genxStartElementLiteral(w, NULL, mc);
    return;
}

void end_class_2_xml()
{
    (void) genxEndElement(w);
    (void) genxEndDocument(w);
    genxDispose(w);
    printf("\n");

    return;
}

void start_static_class_xml()
{
    (void) genxStartElementLiteral(w, NULL, stat);

    return;
}

void end_static_clas_xml()
{
    (void) genxEndElement(w);

    return;
}

void start_set_class_xml()
{
    (void) genxStartElementLiteral(w, NULL, set);

    return;
}

void end_set_class_xml()
{
    (void) genxEndElement(w);

    return;
}

void start_virtual_class_xml()
{
    (void) genxStartElementLiteral(w, NULL, virt);

    return;
}

void end_virtual_class_xml()
{
    (void) genxEndElement(w);

    return;
}

void start_actual_class_xml()
{
    (void) genxStartElementLiteral(w, NULL, act);

    return;
}

void end_actual_class_xml(void)
{
    (void) genxEndElement(w);

    return;
}
