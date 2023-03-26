/*********************************************************************
*                   (c) SEGGER Microcontroller GmbH                  *
*                        The Embedded Experts                        *
*                           www.segger.com                           *
**********************************************************************

----------------------------------------------------------------------
Licensing information
Licensor:                 SEGGER Software GmbH
Licensed to:              Nuclei System Technology Co., Ltd., Room 101, No. 500 Bibo Road, Pilot Free Trade Zone, Shanghai, P. R. China
Licensed SEGGER software: emRun RISC-V
License number:           RTL-00126
License model:            License and Service Agreement, signed August 27, 2021
Licensed platform:        RISC-V based Processor Units designed, manufactured marketed and branded by LICENSEE based on the RV32 architecture
----------------------------------------------------------------------
Support and Update Agreement (SUA)
SUA period:               2021-09-09 - 2022-09-09
Contact to extend SUA:    sales@segger.com
-------------------------- END-OF-HEADER -----------------------------

Purpose: Real-time O(1) memory allocator.

*/

#ifndef __SEGGER_RTL_RTHEAP_H
#define __SEGGER_RTL_RTHEAP_H

#if defined(__cplusplus)
extern "C" {
#endif

#include "__SEGGER_RTL_RTHEAP_ConfDefaults.h"

/*********************************************************************
*
*       Private types
*
**********************************************************************
*/

typedef struct __SEGGER_RTL_RTHEAP_BLOCK_HEADER_t __SEGGER_RTL_RTHEAP_BLOCK;

/*********************************************************************
*
*       Public types
*
**********************************************************************
*/

typedef struct {
  unsigned              L1Bitmap; // L1 free-list bitmap
  __SEGGER_RTL_RTHEAP_BLOCK   * pOrigin; // Pointer to first block of heap
  unsigned              aL2Bitmap[__SEGGER_RTL_RTHEAP_L1_INDEX_BITS]; // L2 free-list bitmaps
  __SEGGER_RTL_RTHEAP_BLOCK   * aBlocks  [__SEGGER_RTL_RTHEAP_L1_INDEX_BITS][__SEGGER_RTL_RTHEAP_L2_INDEX_SZ]; // Head of free lists
} __SEGGER_RTL_RTHEAP_CONTEXT;

typedef int (__SEGGER_RTL_RTHEAP_IO_FUNC)(const char *, ...);

/*********************************************************************
*
*       Public API
*
**********************************************************************
*/

void   __SEGGER_RTL_RTHEAP_Init         (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf, void *pMem, __SEGGER_RTL_RTHEAP_SIZE MemSize);
void * __SEGGER_RTL_RTHEAP_Alloc        (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf, __SEGGER_RTL_RTHEAP_SIZE Size);
void * __SEGGER_RTL_RTHEAP_AllocAligned (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf, __SEGGER_RTL_RTHEAP_SIZE Size, __SEGGER_RTL_RTHEAP_SIZE Align);
void * __SEGGER_RTL_RTHEAP_Realloc      (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf, void *pVoid, __SEGGER_RTL_RTHEAP_SIZE Size);
void   __SEGGER_RTL_RTHEAP_Free         (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf, void *pVoid);
int    __SEGGER_RTL_RTHEAP_IsEmptyHeap  (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf);
int    __SEGGER_RTL_RTHEAP_CheckHeap    (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf);
int    __SEGGER_RTL_RTHEAP_DumpHeap     (__SEGGER_RTL_RTHEAP_CONTEXT *pSelf, __SEGGER_RTL_RTHEAP_IO_FUNC *pIoFunc);
int    __SEGGER_RTL_RTHEAP_CheckConfig  (__SEGGER_RTL_RTHEAP_IO_FUNC *pIoFunc);

#if defined(__cplusplus)
};
#endif

#endif

/*************************** End of file ****************************/
