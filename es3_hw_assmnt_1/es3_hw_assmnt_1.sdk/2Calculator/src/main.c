/*
	Author : s1945267		File : main.c
*/
#include <stdio.h>
#include "platform.h"
#include "xil_types.h"		// Added for integer type definitions
#include "seg7_display.h"	// Added for 7-segment definitions
#include "gpio_init.h"		// Added for GPio initializations and operations


//declaration for arithmetic operations
s32 adder(s32, s32);
s32 subtractor(s32, s32);
s32 multiplicator(s32, s32);
s32 divider(s32, s32);

//declaration for variables
s32 num1 = 0; 			// s8 for num1 because the num1 takes the value from last 8 bit of the 16 bit input
s32 num2 = 0;
double output;				// the output of the arithmetic operations
u8 BTNU = 0;			// button up
u8 BTND = 0;			// button down
u8 BTNL = 0;			// button left
u8 BTNR = 0;			// button right
s16 slideSwitchIn = 0;	// the switches of the inputs

void xil_printf(const char *ctrl1, ...); // Declaration for the xil_printf that prints what we intend to use
										 //at the console


/* s16 was used for num2 and slideSwitchIn instead of u16 since s16 have both signed values
   (negative & positive), so its more practical to use s16 instead of u16 for the code to work. */

/* Both s8 and s16 also automatically enables the code to define the MSB as 2's complement of the input */

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
	else{
		print("GPIOs successfully initialized!\n\r");	// prints out if the GPIOS are initialized
	}


	// Setup the Interrupt System
	status = setUpInterruptSystem();
	if (status != XST_SUCCESS) {
		print("Interrupt system setup failed!\n\r");
		cleanup_platform();
		return 0;
	}
	else{
		print("Interrupt system successful!\n\r");		// prints out if the Interrupt system is initialized
	}

	while (1)
	{
		// displaying the output early so that the code structure would work more efficiently
		displayNumber(output);

		slideSwitchIn = XGpio_DiscreteRead(&SLIDE_SWITCHES, 1); /*	Reads in the value from the slide switches	*/

		BTND = XGpio_DiscreteRead(&P_BTN_DOWN, 1); 				/*	Reads in the value for button down	*/

		BTNL = XGpio_DiscreteRead(&P_BTN_LEFT, 1); 				/*	Reads in the value for button left	*/

		BTNR = XGpio_DiscreteRead(&P_BTN_RIGHT, 1);				/*	Reads in the value for button right	*/

		BTNU = XGpio_DiscreteRead(&P_BTN_UP, 1);   				/*	Reads in the value for button up	*/

		// To update the values for the first and last 8 bits

		num1 = slideSwitchIn & 0x00FF;	/*	To switch the last 8 values	*/

		num2 = slideSwitchIn & 0xFF00;	/*	To switch the first 8 values	*/

		num2 = num2 >> 8;

		/*	Here we can see that the first 8 bits of the input is being shifted into the last 8 bits of
		    the inputs
		*/

		while(BTNL == 1) // when left button is pressed
		{
			slideSwitchIn = XGpio_DiscreteRead(&SLIDE_SWITCHES, 1); /* written back so that the inputs of */
			BTNL = XGpio_DiscreteRead(&P_BTN_LEFT, 1);				/* the button, switches and LEDS could */
			num1 = slideSwitchIn & 0x00FF;							/* be shown and executed the same way even */
			num2 = slideSwitchIn & 0xFF00;							/* while the button is pressed. */
			num2 = num2 >> 8;
			XGpio_DiscreteWrite(&LED_OUT, 1, slideSwitchIn);
			displayNumber(num2);
			if(BTNL == 0) // when left button is released
			{
				output = subtractor(num1, num2); // subtraction operation is performed and stored in output
				xil_printf("Result is : %d\n\r", output); // used for debugging
			}
		}

		while (BTNR == 1) // when right button is pressed
		{
			slideSwitchIn = XGpio_DiscreteRead(&SLIDE_SWITCHES, 1);	/* same format as the button before */
			BTNR = XGpio_DiscreteRead(&P_BTN_RIGHT, 1);
			num1 = slideSwitchIn & 0x00FF;
			num2 = slideSwitchIn & 0xFF00;
			num2 = num2 >> 8;
			XGpio_DiscreteWrite(&LED_OUT, 1, slideSwitchIn);
			displayNumber(num2);
			if(BTNR == 0) // when right button is released
			{
				output = adder(num1, num2); // addition operation is performed and stored in output
				xil_printf("Result is : %d\n\r", output); // used for debugging
			}
		}

		while (BTNU == 1) // when up button is pressed
		{
			slideSwitchIn = XGpio_DiscreteRead(&SLIDE_SWITCHES, 1);	/* same format as the button before */
			BTNU = XGpio_DiscreteRead(&P_BTN_UP, 1);
			num1 = slideSwitchIn & 0x00FF;
			num2 = slideSwitchIn & 0xFF00;
			num2 = num2 >> 8;
			XGpio_DiscreteWrite(&LED_OUT, 1, slideSwitchIn);
			displayNumber(num2);
			if(BTNU == 0) // when up button is released
			{
				output = multiplicator(num1, num2); // multiplication operation is performed and stored in output
				xil_printf("Result is : %d\n\r", output); // used for debugging
			}
		}

		while (BTND == 1) // when down button is pressed
		{
			slideSwitchIn = XGpio_DiscreteRead(&SLIDE_SWITCHES, 1); /* same format as the button before */
			BTND = XGpio_DiscreteRead(&P_BTN_DOWN, 1);
			num1 = slideSwitchIn & 0x00FF;
			num2 = slideSwitchIn & 0xFF00;
			num2 = num2 >> 8;
			XGpio_DiscreteWrite(&LED_OUT, 1, slideSwitchIn);
			displayNumber(num2);
			if(BTND == 0) // when down button is released
			{
				output = divider(num1, num2); // division operation is performed and stored in output
				xil_printf("Result is : %d\n\r", output); // used for debugging
			}
		}
/*
   1) The slideSwitchIn and BTN# variables are defined in the while function when the button is pressed.
 	  This is so that the code reads that the button is pressed. This also enables the input values to be
      displayed on the 7-segment display and also at the LEDs when the user is holding the button while
      while inputting the values.

   2) When the button is released, the code will calculate the value of the inputs using the arithmetic
      operations. The output will then be displayed on the 7-segment display.

      (Note that xil_printf is used for debugging if the output value is actually equal to the output at the
      7-segment display)
 */


	}
    cleanup_platform();
    return 0;
}

s32 adder(s32 num1,s32 num2)
		{
    		s16 sum;
    		sum = num1 + num2;			// The code for addition operation
    		return sum;					// returns value of addition
		}

s32 subtractor(s32 num1,s32 num2)
        {
        	s16 difference;
        	difference = num2 - num1;	// The code for subtraction operation
        	return difference;			// returns value of the subtraction
        }

s32 multiplicator(s32 num1,s32 num2)
        {
        	s16 multiple;
        	multiple = num1 * num2;		// The code for multiplication operation
        	return multiple;			// returns value of multiplication
        }

s32 divider(s32 num1,s32 num2)
        {
	double divide;
        	divide = num2 / num1;		// The code for division operation
        	return divide;				// returns value of division
        }

 /*		The functions for the arithmetic calculations are defined here so that it will be transferred to the
  		main function.
  */

