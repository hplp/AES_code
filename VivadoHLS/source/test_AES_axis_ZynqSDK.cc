#include <stdio.h>
#include <xparameters.h>
#include "xaes_full.h"
#include "xaxidma.h"

XAes_full Aes_full;
XAes_full_Config *Aes_full_cfg;
XAxiDma axiDMA;
XAxiDma_Config *axiDMA_cfg;

#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR+0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR+0x00300000)

#define SIZE_ARR 16
unsigned char inStreamData[SIZE_ARR];

void initPeripherals() {
	printf("initializing AES_Full\n");
	Aes_full_cfg = XAes_full_LookupConfig(XPAR_AES_FULL_0_DEVICE_ID);
	if (Aes_full_cfg) {
		int status = XAes_full_CfgInitialize(&Aes_full, Aes_full_cfg);
		if (status != XST_SUCCESS)
			printf("Error initializing AES_Full core\n");
	}

	printf("initializing AxiDMA\n");
	axiDMA_cfg = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (axiDMA_cfg) {
		int status = XAxiDma_CfgInitialize(&axiDMA, axiDMA_cfg);
		if (status != XST_SUCCESS)
			printf("Error initializing AxiDMA core\n");
	}

	XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
}

int main() {
	unsigned char *m_dma_buffer_TX = (unsigned char*) TX_BUFFER_BASE;
	unsigned char *m_dma_buffer_RX = (unsigned char*) RX_BUFFER_BASE;

	initPeripherals();

	printf("plaintext = ");
	for (unsigned short idx = 0; idx < SIZE_ARR; idx++) {
		inStreamData[idx] = (unsigned char) idx + 65;
		printf("%c ", inStreamData[idx]);
	}
	xil_printf("\n");

	XAes_full_Set_cipher_or_i_cipher(&Aes_full, 1);
	XAes_full_Set_Nr(&Aes_full, 10);
	XAes_full_Start(&Aes_full);

	Xil_DCacheFlushRange((u32) inStreamData, SIZE_ARR * sizeof(unsigned char));
	Xil_DCacheFlushRange((u32) m_dma_buffer_TX, SIZE_ARR * sizeof(unsigned char));
	Xil_DCacheFlushRange((u32) m_dma_buffer_RX, SIZE_ARR * sizeof(unsigned char));

	printf("Sending data to AES core\n");
	XAxiDma_SimpleTransfer(&axiDMA, (u32) inStreamData, SIZE_ARR * sizeof(unsigned char), XAXIDMA_DMA_TO_DEVICE);

	printf("Receive data from AES core\n");
	XAxiDma_SimpleTransfer(&axiDMA, (u32) m_dma_buffer_RX, SIZE_ARR * sizeof(unsigned char), XAXIDMA_DEVICE_TO_DMA);
	while (XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA))
		;

	Xil_DCacheInvalidateRange((u32) m_dma_buffer_RX, SIZE_ARR * sizeof(unsigned char));

	while (!XAes_full_IsDone(&Aes_full))
		;
	printf("Calculation complete\n");

	printf("ciphertext = \n");
	for (unsigned short idx = 0; idx < SIZE_ARR; idx++) {
		//inStreamData[idx] = (unsigned char) idx + 65;
		//printf("%c ", inStreamData[idx]);
		printf("Recv[%d]=%d\n", idx, m_dma_buffer_RX[idx]);
	}
	xil_printf("\n");

	return 0;
}
