#include "xparameters.h"
#include "xuartps.h"
#include "xil_printf.h"

#define UART_DEVICE_ID XPAR_PS7_UART_0_DEVICE_ID

XUartPs Uart_Ps; // UART instance

int main() {
    int Status;
    XUartPs_Config *Config;

    // 初始化 UART
    Config = XUartPs_LookupConfig(UART_DEVICE_ID);
    if (NULL == Config) return XST_FAILURE;

    Status = XUartPs_CfgInitialize(&Uart_Ps, Config, Config->BaseAddress);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    // 設定波特率等參數
    XUartPs_SetBaudRate(&Uart_Ps, 115200);
    while(1){
        // 傳送字串
        char send_msg[] = "Hello from ZYNQ via UART0!\r\n";
        XUartPs_Send(&Uart_Ps, (u8*)send_msg, sizeof(send_msg));
        for (volatile int i = 0; i < 100000000; ++i);  // 簡單 delay
    }
    return 0;

}
