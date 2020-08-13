
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
extern BITBOARD setMask[64];
extern BITBOARD knight_attacks[64];
extern BITBOARD bishop_attacks[64];
extern BITBOARD rook_attacks[64];
extern BITBOARD pawn_attacks[2][64];
extern BITBOARD pawn_moves[2][64];
extern BBOARD rook_commonAttacks[64][64];
extern BBOARD bishop_commonAttacks[64][64];

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
        if (inBrd->ep == true) {
            outId->white_ids[inBrd->to + 8] = outId->white_ids[inBrd->from];
            outId->white_ids[inBrd->from] = 'Z';
        } else if ((inBrd->mover == KING) && (inBrd->from == 4) && (inBrd->to == 6)) {
            // White king-side castling
            outId->white_ids[6] = outId->white_ids[4];
            outId->white_ids[4] = 'Z';
            outId->white_ids[5] = outId->white_ids[7];
            outId->white_ids[7] = 'Z';
        } else if ((inBrd->mover == KING) && (inBrd->from == 4) && (inBrd->to == 2)) {
            // White queen-side castling
            outId->white_ids[2] = outId->white_ids[4];
            outId->white_ids[4] = 'Z';
            outId->white_ids[3] = outId->white_ids[0];
            outId->white_ids[0] = 'Z';
        } else {
            outId->white_ids[inBrd->to] = outId->white_ids[inBrd->from];
            outId->white_ids[inBrd->from] = 'Z';
        }
    } else if (colour == BLACK) {
        if (inBrd->ep == true) {
            outId->black_ids[inBrd->to - 8] = outId->black_ids[inBrd->from];
            outId->black_ids[inBrd->from] = 'Z';
        } else if ((inBrd->mover == KING) && (inBrd->from == 60) && (inBrd->to == 62)) {
            // Black king-side castling
            outId->black_ids[62] = outId->black_ids[60];
            outId->black_ids[60] = 'Z';
            outId->black_ids[61] = outId->black_ids[63];
            outId->black_ids[63] = 'Z';
        } else if ((inBrd->mover == KING) && (inBrd->from == 60) && (inBrd->to == 58)) {
            // Black queen-side castling
            outId->black_ids[58] = outId->black_ids[60];
            outId->black_ids[60] = 'Z';
            outId->black_ids[59] = outId->black_ids[56];
            outId->black_ids[56] = 'Z';
        } else {
            outId->black_ids[inBrd->to] = outId->black_ids[inBrd->from];
            outId->black_ids[inBrd->from] = 'Z';
        }
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

void get_check_square_list(enum COLOUR colour, BOARD* inBrd, CHECK_SQUARE_LIST* csl)
{
    BITBOARD qb;
    BITBOARD qr;
    BITBOARD occupied;
    BBOARD temp;
    int i;
    POSITION* pos = inBrd->pos;
    int square = (int) inBrd->pos->kingsq[colour ^ 1];
    int count = 0;

    // (2) Atack by a Pawn?

    if ((pawn_attacks[colour ^ 1][square] & pos->bitBoard[colour][PAWN]) !=
            0) {
        csl->real_piece[count] = PAWN;
        csl->as_piece[count] = PAWN;
        count++;
        csl->count = count;
    }

    // (3) Attack by a Knight?

    if ((knight_attacks[square] & pos->bitBoard[colour][KNIGHT]) != 0) {
        csl->real_piece[count] = KNIGHT;
        csl->as_piece[count] = KNIGHT;
        count++;
        csl->count = count;

        if (count == 2) {
            return;
        }
    }

    // (4) Attack by bishop/queen?
    qb = pos->bitBoard[colour][BISHOP];
    occupied = pos->bitBoard[WHITE][OCCUPIED] | pos->bitBoard[BLACK][OCCUPIED];

    if ((bishop_attacks[square] & qb) != 0) {
        i = tzcount(qb);

        while (i < 64) {
            temp = bishop_commonAttacks[i][square];

            if (temp.used == true) {
                if ((occupied & temp.bb) == 0) {
                    csl->real_piece[count] = BISHOP;
                    csl->as_piece[count] = BISHOP;
                    csl->square[count] = i;
                    count++;
                    csl->count = count;

                    if (count == 2) {
                        return;
                    }
                }
            }

            qb &= clearMask[i];
            i = tzcount(qb);
        }
    }

    qb = pos->bitBoard[colour][QUEEN];
    occupied = pos->bitBoard[WHITE][OCCUPIED] | pos->bitBoard[BLACK][OCCUPIED];

    if ((bishop_attacks[square] & qb) != 0) {
        i = tzcount(qb);

        while (i < 64) {
            temp = bishop_commonAttacks[i][square];

            if (temp.used == true) {
                if ((occupied & temp.bb) == 0) {
                    csl->real_piece[count] = QUEEN;
                    csl->as_piece[count] = BISHOP;
                    csl->square[count] = i;
                    count++;
                    csl->count = count;

                    if (count == 2) {
                        return;
                    }
                }
            }

            qb &= clearMask[i];
            i = tzcount(qb);
        }
    }

    // (5) Attack by rook/queen?
    qr = pos->bitBoard[colour][ROOK];

    if ((rook_attacks[square] & qr) != 0) {
        i = tzcount(qr);

        while (i < 64) {
            temp = rook_commonAttacks[i][square];

            if (temp.used == true) {
                if ((occupied & temp.bb) == 0) {
                    csl->real_piece[count] = ROOK;
                    csl->as_piece[count] = ROOK;
                    csl->square[count] = i;
                    count++;
                    csl->count = count;

                    if (count == 2) {
                        return;
                    }
                }
            }

            qr &= clearMask[i];
            i = tzcount(qr);
        }
    }

    qr = pos->bitBoard[colour][QUEEN];

    if ((rook_attacks[square] & qr) != 0) {
        i = tzcount(qr);

        while (i < 64) {
            temp = rook_commonAttacks[i][square];

            if (temp.used == true) {
                if ((occupied & temp.bb) == 0) {
                    csl->real_piece[count] = QUEEN;
                    csl->as_piece[count] = ROOK;
                    csl->square[count] = i;
                    count++;
                    csl->count = count;

                    if (count == 2) {
                        return;
                    }
                }
            }

            qr &= clearMask[i];
            i = tzcount(qr);
        }
    }

    return;
}
