
/*
 *	sengine.c
 *	(c) 2017-2018, Brian Stephenson
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
 *	This is the module that contains all memory management
 */

#include "sengine.h"
#include "pool.h"

#define SENGINE_POSITION_POOL_BLOCKSIZE 5000
#define SENGINE_BOARD_POOL_BLOCKSIZE 5000
#define SENGINE_HASHVALUE_POOL_BLOCKSIZE 16000
#define SENGINE_BOARDLIST_POOL_BLOCKSIZE 5000

static pool pos_pool_ptr;
static pool hval_pool_ptr;
static pool blist_pool_ptr;
static pool board_pool_ptr;

void init_mem(void)
{
    poolInitialize(&pos_pool_ptr, sizeof(POSITION), SENGINE_POSITION_POOL_BLOCKSIZE);
    poolInitialize(&blist_pool_ptr, sizeof(BOARDLIST), SENGINE_BOARDLIST_POOL_BLOCKSIZE);
    poolInitialize(&board_pool_ptr, sizeof(BOARD), SENGINE_BOARD_POOL_BLOCKSIZE);

    return;
}

void close_mem(void)
{
    poolFreePool(&pos_pool_ptr);
    poolFreePool(&blist_pool_ptr);
    poolFreePool(&board_pool_ptr);

    return;
}

void setup_mpool()
{
    poolInitialize(&hval_pool_ptr, sizeof(HASHVALUE), SENGINE_HASHVALUE_POOL_BLOCKSIZE);
    return;
}

void destroy_mpool()
{
    poolFreePool(&hval_pool_ptr);
    return;
}

BOARD* getBoard(POSITION* ppos, unsigned char played, unsigned char move)
{
    BOARD* rpbrd;
    rpbrd = calloc(1, sizeof(BOARD));
    rpbrd = (BOARD*) poolMalloc(&board_pool_ptr);
    SENGINE_MEM_ASSERT(rpbrd);
    memset((void*) rpbrd, 0, sizeof(BOARD));
    rpbrd->pos = getPosition(ppos);
    rpbrd->tag = '*';
    rpbrd->side = played;
    rpbrd->ply = move;
    rpbrd->qualifier[0] = '\0';
    rpbrd->use_count = 1;
    return rpbrd;
}

BOARD* cloneBoard(BOARD* inBrd)
{
    BOARD* rpbrd;
    rpbrd = (BOARD*) poolMalloc(&board_pool_ptr);
    SENGINE_MEM_ASSERT(rpbrd);
    memcpy((void*) rpbrd, (void*) inBrd, sizeof(BOARD));
    rpbrd->next = NULL;
    return rpbrd;
}

POSITION* getPosition(POSITION* ppos)
{
    POSITION* rpos;
    rpos = (POSITION*) poolMalloc(&pos_pool_ptr);
    SENGINE_MEM_ASSERT(rpos);
    memcpy(rpos, ppos, sizeof(POSITION));
    return rpos;
}

KILLERHASHVALUE* getKillerHashValue(void)
{
    KILLERHASHVALUE* khv = calloc(1, sizeof(HASHVALUE));
    SENGINE_MEM_ASSERT(khv);
    return khv;
}

HASHVALUE* getHashValue(void)
{
    HASHVALUE* hv = (HASHVALUE*) poolMalloc(&hval_pool_ptr);
    SENGINE_MEM_ASSERT(hv);
    memset((void*) hv, 0, sizeof(HASHVALUE));
    return hv;
}

void freeHashValue(HASHVALUE* ptr)
{
    poolFree(&hval_pool_ptr, ptr);
    return;
}

BOARDLIST* getBoardlist(unsigned char tplay, unsigned char move)
{
    BOARDLIST* pbl;
    pbl = (BOARDLIST*) poolMalloc(&blist_pool_ptr);
    SENGINE_MEM_ASSERT(pbl);
    memset((void*) pbl, 0, sizeof(BOARDLIST));
    pbl->toPlay = tplay;
    pbl->moveNumber = move;
    pbl->use_count = 1;
    pbl->vektor = (BOARD*) NULL;
    return pbl;
}

void freeBoard(BOARD* pbrd)
{
    assert(pbrd != NULL);

    if (pbrd->pos != NULL) {
        freePosition(pbrd->pos);
    }

    if (pbrd->nextply != NULL) {
        freeBoardlist(pbrd->nextply);
    }

    if (pbrd->threat != NULL) {
        freeBoardlist(pbrd->threat);
    }

    poolFree(&board_pool_ptr, pbrd);

    return;
}

void freePosition(POSITION* ppos)
{
    assert(ppos != NULL);
    poolFree(&pos_pool_ptr, ppos);
    return;
}

void freeBoardlist(BOARDLIST* pbl)
{
    assert(pbl != NULL);
    pbl->use_count--;

    if (pbl->use_count == 0) {
        BOARD* b;
        BOARD* tmp;

        LL_FOREACH_SAFE(pbl->vektor, b, tmp) {
            LL_DELETE(pbl->vektor, b);
            freeBoard(b);
        }

        poolFree(&blist_pool_ptr, pbl);
    }

    return;
}
