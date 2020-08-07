
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

extern BITBOARD clearMask[64];

static const unsigned char w_ids[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
static const unsigned char b_ids[] = "abcdefghijklmnopqrstuvwxyz";
static char pieces[] = "0PSBRQK";

int tzcount(BITBOARD inBrd);

void setup_id_board(BOARD* inBrd, ID_BOARD* idBrd)
{
    int w = 0;
    int b = 0;
    BITBOARD temp;
    int i;

    temp = inBrd->pos->bitBoard[WHITE][OCCUPIED];

    i = tzcount(temp);

    while (i < 64) {
        idBrd->white_ids[i] = w_ids[w];
        w++;
        temp &= clearMask[i];
        i = tzcount(temp);
    }

    temp = inBrd->pos->bitBoard[BLACK][OCCUPIED];

    i = tzcount(temp);

    while (i < 64) {
        idBrd->black_ids[i] = b_ids[b];
        b++;
        temp &= clearMask[i];
        i = tzcount(temp);
    }

    return;
}

void update_id_board(enum COLOUR colour, BOARD* inBrd, ID_BOARD* inId, ID_BOARD* outId)
{
    if (colour == WHITE) {
    } else if (colour == BLACK) {
    }

    return;
}

char get_piece_type(enum COLOUR col, BOARD* inBrd, unsigned char to)
{
    BITBOARD temp;
    enum PIECE ep;
    int i;
    int ito = (int) to;
    POSITION* pos = inBrd->pos;

    for (ep = PAWN; ep <= QUEEN; ep++) {
        temp = pos->bitBoard[col][ep];
        i = tzcount(temp);

        while (i < 64) {

            if (i == ito) {
                return pieces[ep];
            }

            temp &= clearMask[i];
            i = tzcount(temp);
        }
    }

    return 'X';
}
