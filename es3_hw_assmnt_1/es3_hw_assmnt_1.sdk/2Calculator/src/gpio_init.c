/*
	Author : s1945267		File : gpio_init.c
*/
#include "gpio_init.h"

/*	The initGpio(void) function initializes all the GPIOs that are going to be used in the main function	*/

XStatus initGpio(void)
{
	XStatus status;

	/* Note that all the required XGPio objects
	 * have been declared in the gpio_init.h header file
	 * but make sure you confirm that the IDs used to initialize
	 * the GPIOs here are correct
	 */
	status = XGpio_Initialize(&SEG7_HEX_OUT, 0);	// Initializing the format of digit displayed
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&SEG7_SEL_OUT, 1);	// Initializing how a digit should be displayed
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	
	status = XGpio_Initialize(&SLIDE_SWITCHES, 7);	// Initializing the 16 switches
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&P_BTN_DOWN, 3);		// Initializing down button
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&P_BTN_LEFT, 4);		// Initializing left button
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&P_BTN_RIGHT, 5);		// Initializing right button
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&P_BTN_UP, 6);		// Initializing up button
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&LED_OUT, 2);			// Initializing the 16 LEDs
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
