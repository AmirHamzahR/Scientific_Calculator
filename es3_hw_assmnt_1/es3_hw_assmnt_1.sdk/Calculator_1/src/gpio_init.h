#ifndef __GPIO_INIT_H_
#define __GPIO_INIT_H_

#include "xgpio.h"		// Added for xgpio object definitions

XStatus initGpio(void);

XGpio SEG7_HEX_OUT;
XGpio SEG7_SEL_OUT;
XGpio P_BTN_LEFT;
XGpio P_BTN_RIGHT;
XGpio P_BTN_UP;
XGpio P_BTN_DOWN;
XGpio LED_OUT;
XGpio SLIDE_SWITCHES;

#endif
