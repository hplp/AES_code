// ==============================================================
// File generated on Thu Apr 11 11:40:40 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAES_FULL_AXIS8_H
#define XAES_FULL_AXIS8_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes_full_axis8_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Aes_BaseAddress;
} XAes_full_axis8_Config;
#endif

typedef struct {
    u32 Aes_BaseAddress;
    u32 IsReady;
} XAes_full_axis8;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes_full_axis8_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes_full_axis8_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes_full_axis8_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes_full_axis8_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAes_full_axis8_Initialize(XAes_full_axis8 *InstancePtr, u16 DeviceId);
XAes_full_axis8_Config* XAes_full_axis8_LookupConfig(u16 DeviceId);
int XAes_full_axis8_CfgInitialize(XAes_full_axis8 *InstancePtr, XAes_full_axis8_Config *ConfigPtr);
#else
int XAes_full_axis8_Initialize(XAes_full_axis8 *InstancePtr, const char* InstanceName);
int XAes_full_axis8_Release(XAes_full_axis8 *InstancePtr);
#endif

void XAes_full_axis8_Start(XAes_full_axis8 *InstancePtr);
u32 XAes_full_axis8_IsDone(XAes_full_axis8 *InstancePtr);
u32 XAes_full_axis8_IsIdle(XAes_full_axis8 *InstancePtr);
u32 XAes_full_axis8_IsReady(XAes_full_axis8 *InstancePtr);
void XAes_full_axis8_EnableAutoRestart(XAes_full_axis8 *InstancePtr);
void XAes_full_axis8_DisableAutoRestart(XAes_full_axis8 *InstancePtr);

void XAes_full_axis8_Set_cipher_or_i_cipher(XAes_full_axis8 *InstancePtr, u32 Data);
u32 XAes_full_axis8_Get_cipher_or_i_cipher(XAes_full_axis8 *InstancePtr);
void XAes_full_axis8_Set_Nr(XAes_full_axis8 *InstancePtr, u32 Data);
u32 XAes_full_axis8_Get_Nr(XAes_full_axis8 *InstancePtr);

void XAes_full_axis8_InterruptGlobalEnable(XAes_full_axis8 *InstancePtr);
void XAes_full_axis8_InterruptGlobalDisable(XAes_full_axis8 *InstancePtr);
void XAes_full_axis8_InterruptEnable(XAes_full_axis8 *InstancePtr, u32 Mask);
void XAes_full_axis8_InterruptDisable(XAes_full_axis8 *InstancePtr, u32 Mask);
void XAes_full_axis8_InterruptClear(XAes_full_axis8 *InstancePtr, u32 Mask);
u32 XAes_full_axis8_InterruptGetEnabled(XAes_full_axis8 *InstancePtr);
u32 XAes_full_axis8_InterruptGetStatus(XAes_full_axis8 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif