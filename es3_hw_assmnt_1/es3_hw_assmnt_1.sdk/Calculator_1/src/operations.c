#include "operations.h"
#include "xgpio.h"
#include "gpio_init.h"

/* USING NUMBER_SHIFT TO SHIFT THE 16 BITS INTO 8 BITS OF TWO SECTION */

u16 number_shift(s16 slideSwitchIn, s16 num1, s16 num2) {

	num1 = slideSwitchIn & 0x00FF;	/*	To switch the last 8 values	*/
	
	num2 = slideSwitchIn & 0xFF00;	/*	To switch the first 8 values	*/

	num2 = num2 >> 8;


	/*if(num1 > 0x007F){
		num1 = -0x0080;
	}
	else if (num2 > 0x007F){
		num2 = -0x0080;
	}*/

/*	The if else function is written to make sure that the MSB will become negative by
	using 2's Complement theory.
*/

	return 1;
}

u16 update_Gpio(s16 slideSwitchIn, u8 R, u8 L, u8 U, u8 D){

	slideSwitchIn = XGpio_DiscreteRead(&SLIDE_SWITCHES, 1); /*	Reads in the value from the slide switches	*/

	D = XGpio_DiscreteRead(&P_BTN_DOWN, 1); /*	Reads in the value for button down	*/

	L = XGpio_DiscreteRead(&P_BTN_LEFT, 1); /*	Reads in the value for button left	*/

	R = XGpio_DiscreteRead(&P_BTN_RIGHT, 1);/*	Reads in the value for button right	*/

	U = XGpio_DiscreteRead(&P_BTN_UP, 1);   /*	Reads in the value for button up	*/

	return 1;
}

/*------------------------------------------------------------------------------*/





/*	The displayNumber() takes two arguments:
	
	1. Number to display

	2. Check Value

	The check value can be 0,1 or 2. 0 represents a positive whole number, 1 represents 
	
	negative whole number while 2 represents decimal numbers. As shown in the seg7_display.c file, 

	the decimal point is by default set to the 2nd digit (so there are 2 numbers after the decimal point).
	
	This is why I have multiplied the decimal values by a 100 so they "act" as decimals.  

	*/


/*

	The use of a variable just for checking whether it is decimal or negative is negligible and a constant can

	simply be placed instead. However, using check as a variable helped me a lot for debugging. 

*/


/* ----------------------- ADDER -------------------------------*/

/*	Since both our inputs are positive, the output will always be positive and a whole number so check value is just 0	*/

void adder(s16 num1, s16 num2) {
	result = num1 + num2;
	displayNumber(result);
}

/* ----------------------- SUBTRACTOR -------------------------------*/

void subtractor(s16 num1, s16 num2) {

/*	In this case, the number CAN be negative, that is why check is set to 1 in the case that the first number is greater 
	than the second one.	*/

	if (num1 > num2) {
		result = num1 - num2;
	} 
	else {
		result = num2 - num1;
	}
	displayNumber(result);	/*	Instead of writing displayNumber() twice, it is simply more effecient to place
										it after the statements	*/
}

/* ----------------------- MULTIPLIER -------------------------------*/

/*	Once again, two positive number multiplied with each other can only result in positive whole numbers, hence check = 0	*/

void multiplier(s16 num1, s16 num2) {
	result = num1 * num2;
	displayNumber(result);
}

/* ----------------------- DIVIDER -------------------------------*/

/*	Here there are three cases:
	
	1. Divide by Zero Error: In this case, I am just displaying "Zero" and setting check to zero as well.

	2. Decimal Number: check set to 2 and the quotient is multiplied by 100 to get the 2 decimal places.
	
	3. Whole Number: check set to 0
	
	*/

void divider(s16 num1, s16 num2) {

	if (num1 == 0) { /*	avoid divide by zero error	*/
		result = 10014;                /* This number displays ZERO as there is a divide by zero error */
	}

	else if (num2 % num1 != 0) { 	/*	Check for decimal	*/
		result = (num2 * 100) / num1;
	} 

	else {							/*	This is the case where num1 is a factor of num2	*/
		result = num2 / num1;		
	}
	displayNumber(result);
}

