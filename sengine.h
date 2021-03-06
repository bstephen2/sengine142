
/*
 *	sengine.h
 *	(c) 2017, Brian Stephenson
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
 *	This is the main file that includes all necessary C headers and defines
 *	all macros and types required.
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <time.h>
#include <stdbool.h>
#include <stdint.h>
#include <inttypes.h>
#include "uthash.h"
#include "utlist.h"
#include "utstring.h"
#include "md5.h"

#ifdef MOVESTAT
#undef uthash_expand_fyi
#define uthash_expand_fyi(tbl) fprintf(stderr, "expanded to %u buckets\n", tbl->num_buckets)

#undef uthash_noexpand_fyi
#define uthash_noexpand_fyi(tbl) fprintf(stderr, "warning: bucket expansion inhibited\n")
#endif

#ifdef __GNUC__
#define COMP "gcc"
#define CV  __VERSION__
#else
#define COMP "Unknown"
#define CV "?.?"
#endif

#ifdef __linux__
#ifdef __LP64__
#define PLATFORM "Linux 64-bit"
#else
#define PLATFORM "Linux 32-bit"
#endif
#else
#ifdef __WIN32__
#define PLATFORM "Win32"
#else
#ifdef __WIN64__
#define PLATFORM "Win64"
#endif
#endif
#endif

#define PROGRAM_NAME "Kalulu"
#define PROGRAM_VERSION "1.4.2"
#define PROGRAM_YEAR "2017-2020"
#define PROGRAM_AUTHOR "Brian Stephenson"
#define MAX_HASH_SIZE 150000
#define MD5_LEN 16
#define KILLERKEY_LEN 3
#define NOSTIP 100
#define B_KING_CASTLING 2
#define B_QUEEN_CASTLING 4
#define W_KING_CASTLING 8
#define W_QUEEN_CASTLING 16

#define SENGINE_MEM_ASSERT(X) if ((X) == NULL) \
{ \
    fprintf(stderr, "OUT OF MEMORY at %s(%d)\n", __FILE__, __LINE__); \
    exit(1); \
}

#define FILE(a) ((a) & 7)

#define RANK(a) ((a) >> 3)

#define SQUARE_TO_INT(a) (( *((a) + 1) -1 - '0')*8 + (*(a) - 'a'))

#define ISWHITEINCHECK(a) \
	attacks((a), (a)->kingsq[0], BLACK)

#define ISBLACKINCHECK(a) \
	attacks((a), (a)->kingsq[1], WHITE)

enum AIM { MATE, STALEMATE };
enum THREATS { ALL, NONE, SHORTEST };
enum STIP { DIRECT, SELF, REFLEX, HELP };
enum COLOUR { WHITE, BLACK };
enum STATUS { SETPLAY, THREATS, TRIESKEYS };
enum PIECE { NOPIECE = 0, OCCUPIED = 0, PAWN, KNIGHT, BISHOP, ROOK, QUEEN, KING
           };
enum SOUNDNESS { UNSET, SHORT_SOLUTION, SOUND, COOKED, NO_SOLUTION,
                 MISSING_SOLUTION
               };

typedef uint64_t BITBOARD;

typedef struct BBOARD {
    BITBOARD bb;
    bool used;
} BBOARD;

typedef struct POSITION {
    BITBOARD bitBoard[2][7];     /*  The position this move created */
    unsigned char kingsq[2];     /*  The squares of the kings, white then black. */
    unsigned char flags;         /*  Various flags. */
} POSITION;

typedef struct BOARDLIST {
    struct BOARD* vektor;
    unsigned char legalMoves;
    bool isTry;
    unsigned char maxStip;
    unsigned char minStip;
    unsigned char moveNumber;
    unsigned char stipIn;
    unsigned char use_count;
    enum COLOUR toPlay;
} BOARDLIST;

typedef struct BOARD {
    POSITION* pos;
    BOARDLIST* nextply;          /*  A pointer to the boardlist containing the next moves from this position. */
    BOARDLIST* threat;           /*  A pointer to the boardlist containing the threats active from this position. */
    unsigned char ply;           /* Move number. */
    enum COLOUR side;            /* The side that played this move */
    enum PIECE mover;            /* The piece that moved */
    unsigned char from;          /*  The square the piece moved from. */
    unsigned char to;            /* The square the piece moved to. */
    char qualifier[3];           /* The notation qualifier to qualify otherwise ambiguous moves */
    bool captured;               /*  Whether the move was a capture. */
    enum PIECE promotion;        /*  Piece promoted to, if any. */
    bool check;                  /*  Whether the move was a check. */
    char tag;                    /*  ? '#', '=', '+', '!', '?', '*'. */
    bool ep;                     /*  Whether this move was an ep capture. */
    unsigned char epSquare;      /*  The square on which a pawn can be captured ep from this position. */
    unsigned char flights;
    unsigned char use_count;
    bool killer;
    struct BOARD* next;
} BOARD;

typedef struct ID_BOARD {
    char white_ids[65];
    char black_ids[65];
} ID_BOARD;

typedef struct CHECK_SQUARE_LIST {
    int count;
    int square[2];
    enum PIECE real_piece[2];
    enum PIECE as_piece[2];
} CHECK_SQUARE_LIST;

typedef struct PIN_STATUS {
    UT_string* w_before;
    UT_string* w_after;
    UT_string* b_before;
    UT_string* b_after;
} PIN_STATUS;

typedef struct HASH_VAR {
    char* class;
    UT_hash_handle hh;
} HASH_VAR;

typedef struct HASHKEY {
    unsigned char hashkey[16];
} HASHKEY;

typedef struct HASHVALUE {
    unsigned char hashkey[16];
    BOARDLIST* cont;
    UT_hash_handle hh;
} HASHVALUE;

typedef struct KILLERKEY {
    unsigned char kkey[3];
} KILLERKEY;

typedef struct KILLERHASHVALUE {
    unsigned char kkey[3];
    int count;
    UT_hash_handle hh;
} KILLERHASHVALUE;

typedef struct DIR_SOL {
    BOARDLIST* set;
    BOARDLIST* tries;
    BOARDLIST* keys;
    BOARDLIST* trieskeys;
    unsigned int hash_added;
    unsigned int hash_hit_null;
    unsigned int hash_hit_list;
} DIR_SOL;

typedef struct HELP_SOL {
    BOARDLIST* sols;
} HELP_SOL;

typedef struct SELF_SOL {
    BOARDLIST* set;
} SELF_SOL;

typedef struct REFLEX_SOL {
    BOARDLIST* set;
} REFLEX_SOL;

void init_mem(void);
void close_mem(void);
BOARD* getBoard(POSITION*, unsigned char, unsigned char);
BOARD* cloneBoard(BOARD*);
POSITION* getPosition(POSITION*);
BOARDLIST* getBoardlist(unsigned char, unsigned char);
void freeBoard(BOARD*);
void freePosition(POSITION*);
void freeBoardlist(BOARDLIST*);
ID_BOARD* getIdBoard();
ID_BOARD* cloneIdBoard(ID_BOARD* inIdBrd);
void freeIdBoard(ID_BOARD* inIdBrd);
int do_options(int, char**);
void init(void);
BOARD* setup_diagram(enum COLOUR);
int validate_board(BOARD*);
void solve_direct(DIR_SOL*, BOARD*);
void start_dir(void);
void end_dir(void);
void time_dir(double);
void add_dir_set(BOARDLIST*);
void add_dir_tries(BOARDLIST*);
void add_dir_keys(BOARDLIST*);
void add_dir_stats(DIR_SOL*);
void add_dir_options(void);
char* toStr(BOARD*);
BOARDLIST* generateWhiteBoardlist(BOARD*, int);
BOARDLIST* generateBlackBoardlist(BOARD*, int, unsigned int*);
void weedOutShortVars(BOARDLIST*, unsigned char);
void weedOutLongVars(BOARDLIST*);
bool isKey(BOARD*);
void generateKingMoves(BOARD*, enum COLOUR, BOARDLIST*);
bool deepEquals(BOARD*, BOARD*);
bool bListEquals(BOARDLIST*, BOARDLIST*);
void putRefutsToEnd(BOARDLIST*);
void getHashKey(BOARD*, HASHKEY*);
HASHVALUE* getHashValue(void);
KILLERHASHVALUE* getKillerHashValue(void);
void getKillerHashKey(BOARD*, KILLERKEY*);
void class_direct_2(DIR_SOL*, BOARD*);
CHECK_SQUARE_LIST* getCSL();
void freeCSL(CHECK_SQUARE_LIST*);
PIN_STATUS* get_pin_status();
void free_pin_status(PIN_STATUS*);
void populate_pin_status(PIN_STATUS*, BOARD*, BOARD*, ID_BOARD*, ID_BOARD*);

#ifdef OPTIONS
void show_options();
#endif

#ifdef SHOWBOARD
void display_board(BOARD*);
#endif
