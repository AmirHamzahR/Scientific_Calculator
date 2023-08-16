/*
	Author : s1945267		File : gpio_init.h
*/
#ifndef __GPIO_INIT_H_
#define __GPIO_INIT_H_

#include "xgpio.h"		// Added for XGPio object definitions

XStatus initGpio(void); // Declaration for initGpio() function

XGpio SEG7_HEX_OUT;		// Definition for digit displayed format
XGpio SEG7_SEL_OUT;		// Definition for how a digit should be displayed in bits
XGpio P_BTN_LEFT;		// Definition for left button
XGpio P_BTN_RIGHT;		// Definition for right button
XGpio P_BTN_UP;			// Definition for up button
XGpio P_BTN_DOWN;		// Definition for down button
XGpio LED_OUT;			// Definition for led output
XGpio SLIDE_SWITCHES;	// Definition for switches

#endif
