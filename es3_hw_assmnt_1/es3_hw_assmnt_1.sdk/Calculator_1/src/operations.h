#ifndef OPERATIONS_H_
#define OPERATIONS_H_

/* INCLUSION OF HEADER FILES WHICH CONTAIN C DECLARATIONS AND MACRO DEFINITIONS */

#include <math.h>
#include <stdio.h>
#include "xil_types.h" 

/* ---------------------------------------------------------------------------- */


/* -------------------------FUNCTION DECLARATION------------------------------- */

void adder(s16, s16);
void subtractor(s16, s16);
void multiplier(s16, s16);
void divider(s16, s16);
void displayNumber(u16 number);

/* ---------------------------------------------------------------------------- */

/* -------------------------VARIABLE DECLARATION------------------------------- */

s16 result;	/*	This is a global variable used to calculate the result for each operation	*/

/* ---------------------------------------------------------------------------- */

#endif /* arithmetic */
