#include <stdio.h>
#include "platform.h"
#include "xil_types.h"		// Added for integer type definitions
#include "seg7_display.h"	// Added for 7-segment definitions
#include "operations.h"
#include "gpio_init.h"


// declaration for variables
s16 number_shift( s16 *, s16 *, s16 *);
u16 update_Gpio( s16 *, u8 *, u8 *, u8 *, u8 *);
s16 num1 = 0;
s16 num2 = 0;
u8 BTNU = 0;
u8 BTND = 0;
u8 BTNL = 0;
u8 BTNR = 0;
s16 slideSwitchIn = 0;


int main()
{
	init_platform();
	int status;

    // Initialize the GPIOs
    status = initGpio();
	if (status != XST_SUCCESS) {
		print("GPIOs initialization failed!\n\r");
		cleanup_platform();
		return 0;
	}
	else
		printf("GPIOs successfully initialised!\n\r");


	// Setup the Interrupt System
	status = setUpInterruptSystem();
	if (status != XST_SUCCESS) {
		print("Interrupt system setup failed!\n\r");
		cleanup_platform();
		return 0;
	}

	while (1)
	{
		// Call to update the GPios
		slideSwitchIn = XGpio_DiscreteRead(&SLIDE_SWITCHES, 1);

		// To input values for the buttons
		BTNL = XGpio_DiscreteRead(&P_BTN_LEFT, 1);
		BTNR = XGpio_DiscreteRead(&P_BTN_RIGHT, 1);
		BTNU = XGpio_DiscreteRead(&P_BTN_UP, 1);
		BTND = XGpio_DiscreteRead(&P_BTN_DOWN, 1);

		XGpio_DiscreteWrite(&LED_OUT, 1, slideSwitchIn);

		num1 = slideSwitchIn & 0x00FF;	/*	To switch the last 8 values	*/
		num2 = slideSwitchIn & 0xFF00;	/*	To switch the first 8 values	*/
		num2 = num2 >> 8;
		/*	The if else function is written to make sure that the MSB will become negative by
			using 2's Complement theory.
		*/


		while(BTNL == 1) // when left button is pressed
		{
			BTNL = XGpio_DiscreteRead(&P_BTN_LEFT, 1); //detects when button is pressed
			if(BTNL == 0)
			displayNumber(1234);
		}
	}
    cleanup_platform();
    return 0;
}
