/*
	 a : s1945267		File : seg7_display.c
*/
#include <stdio.h>
#include "xil_types.h"		// Added for integer type definitions
#include "seg7_display.h"	// Added for 7-segment definitions
#include "gpio_init.h"

// declaration of the  variables used in seg7_display.c
u8 digitDisplayed = FALSE;
u8 digits[4];
u8 numOfDigits;
u8 digitToDisplay;
u8 digitNumber;
s16 negative; 				// used to modulus the number so that displayNumber can identify negative numbers

/*	displayNumber() function will detect the number in the range and display it at the 7-segment display */

void displayNumber(s16 number)
{
	u8 count;
	/* Note that 9999 is the maximum number that can be displayed
	 * Therefore, check if the number is less than or equal to 9999
	 * and display the number otherwise, display dashes in all the four segments
	 */
	if (number >= 0 && number <= 9999)
	{
		// Call the calculateDigits method to determine the digits of the number
		calculateDigits(number);
		/* Do not display leading zeros in a number,
		 * but if the entire number is a zero, it should be displayed.
		 * By displaying the number from the last digit, it is easier
		 * to avoid displaying leading zeros by using the numOfDigits variable
		 */
		count = 4;
		while (count > 4 - numOfDigits)
		{
			digitToDisplay = digits[count-1];
			digitNumber = count;
			count--;
			/* Wait for timer interrupt to occur and ISR to finish
			 * executing digit display instructions
			 */
			while (digitDisplayed == FALSE);
			digitDisplayed = FALSE;
		}
	}
	else if (number < 0 && number > -999) // Negative values to be displayed is in between 0 to -999
	{

		negative = number * (-1); // to make sure that calculate digits can read the negative number
		calculateDigits(negative);
		count = 4;
		while (count >= 4 - numOfDigits)
		{
			if (count == 4 - numOfDigits)
			{
				digitToDisplay = NUMBER_DASH;		// NUMBER_DASH for the negative dash
			}
			else
			{
				digitToDisplay = digits[count - 1];
			}
			digitNumber = count;
			count--;

			while (digitDisplayed == FALSE);
			digitDisplayed = FALSE;
		}
	}
	else
	{
		// Display "----" to indicate that the number is out of range
		count = 1;
		while (count < 5)
		{
			digitToDisplay = NUMBER_DASH;
			digitNumber = count;
			count++;
			/* Wait for timer interrupt to occur and ISR to finish
			 * executing digit display instructions
			 */
			while (digitDisplayed == FALSE);
			digitDisplayed = FALSE;
		}
	}
}

/*		calculateDigits() function determine how many digits should be displayed		*/

void calculateDigits(u16 number)
{
	u8 fourthDigit;
	u8 thirdDigit;
	u8 secondDigit;
	u8 firstDigit;

	// Check if number is up to four digits
	if (number > 999)
	{
		numOfDigits = 4;

		fourthDigit  = number % 10;
		thirdDigit = (number / 10) % 10;
		secondDigit  = (number / 100) % 10;
		firstDigit = number / 1000;
	}
	// Check if number is three-digits long
	else if (number > 99 && number < 1000)
	{
		numOfDigits = 3;

		fourthDigit  = number % 10;
		thirdDigit = (number / 10) % 10;
		secondDigit  = (number / 100) % 10;
		firstDigit = 0;
	}
	// Check if number is two-digits long
	else if (number > 9 && number < 100)
	{
		numOfDigits = 2;

		fourthDigit  = number % 10;
		thirdDigit = (number / 10) % 10;
		secondDigit  = 0;
		firstDigit = 0;
	}
	// Check if number is one-digit long
	else if (number >= 0 && number < 10)
	{
		numOfDigits = 1;

		fourthDigit  = number % 10;
		thirdDigit = 0;
		secondDigit  = 0;
		firstDigit = 0;
	}

	digits[0] = firstDigit;
	digits[1] = secondDigit;
	digits[2] = thirdDigit;
	digits[3] = fourthDigit;

	return;
}

/* 			displayDigit() function inputs in what digits will be chosen to be displayed		*/

void displayDigit()
{
	/*
	 * This timer ISR is used to display the digits
	 */
	switch (digitToDisplay)
	{
		case NUMBER_BLANK :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_BLANK); 	// Displays blank spaces
			break;
		case 0 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_ZERO); 		// Displays digit '0'
			break;
		case 1 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_ONE); 		// Displays digit '1'
			break;
		case 2 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_TWO); 		// Displays digit '2'
			break;
		case 3 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_THREE); 	// Displays digit '3'
			break;
		case 4 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_FOUR);		// Displays digit '4'
			break;
		case 5 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_FIVE);		// Displays digit '5'
			break;
		case 6 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_SIX);		// Displays digit '6'
			break;
		case 7 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_SEVEN);		// Displays digit '7'
			break;
		case 8 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_EIGHT);		// Displays digit '8'
			break;
		case 9 :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_NINE);		// Displays digit '9'
			break;
		case NUMBER_DASH :
			XGpio_DiscreteWrite(&SEG7_HEX_OUT, 1, DIGIT_DASH);		// Displays dash '-'
			break;
	}

	// Select the appropriate digit
	if (digitNumber == 1) {
		XGpio_DiscreteWrite(&SEG7_SEL_OUT, 1, EN_FIRST_SEG);
	}
	else if (digitNumber == 2) {
		XGpio_DiscreteWrite(&SEG7_SEL_OUT, 1, EN_SECOND_SEG);
	}
	else if (digitNumber == 3) {
		XGpio_DiscreteWrite(&SEG7_SEL_OUT, 1, EN_THIRD_SEG);
	}
	else if (digitNumber == 4) {
		XGpio_DiscreteWrite(&SEG7_SEL_OUT, 1, EN_FOURTH_SEG);
	}

	digitDisplayed = TRUE;
	return;
}
