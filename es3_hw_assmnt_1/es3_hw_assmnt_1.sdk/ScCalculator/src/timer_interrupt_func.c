/*
	Author : s1945267		File : seg7_display.c
*/
#include "seg7_display.h"

void hwTimerISR(void *CallbackRef)
{
	displayDigit();
}
