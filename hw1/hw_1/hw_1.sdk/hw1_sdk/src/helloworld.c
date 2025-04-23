/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"

// AXI Base Address
#define HW1_BASEADDR XPAR_HW1_0_S00_AXI_BASEADDR

// Register Offset
#define REG_START 0x00   // slv_reg0 △ 北 start
#define REG_INDEX 0x04   // slv_reg1 △ 肚 led_index

int main() {
    int i;
    u32 index;

    xil_printf("=== Start LED Test via AXI IP ===\n\r");

    for (i = 0; i < 8; i++) {
        // 祇癳 start pulse糶 1 △ 单 △ 糶 0
        Xil_Out32(HW1_BASEADDR + REG_START, 0x01);
        usleep(1000);  // 单 1ms
        Xil_Out32(HW1_BASEADDR + REG_START, 0x00);

        // 单 Verilog 穝 led_index
        usleep(1000);

        // 弄ヘ玡獹 LED index
        index = Xil_In32(HW1_BASEADDR + REG_INDEX);
        xil_printf("LED Index = %d\n\r", index & 0x7);  // 程 3 bits

        // 单牟祇
        usleep(500000);  // 0.5 
    }

    xil_printf("=== LED Test Complete ===\n\r");
    return 0;
}




