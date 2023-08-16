/*
	Author : s1945267		File : calculations.h
*/
#ifndef CALCULATIONS_H_
#define CALCULATIONS_H_

/* INCLUSION OF HEADER FILES WHICH CONTAIN C DECLARATIONS AND MACRO DEFINITIONS */

#include <stdio.h>
#include "xil_types.h"
#include <complex.h>

#define PI 3.14159265


//function declaration for complex number calculations (which includes real numbers)
void adder(double complex *, s32 , s32, u16 *, u16 * );
void subtractor(double complex *, s32 , s32, u16 *, u16 * );
void multiplicator(double complex *, s32 , s32, u16 *, u16 * );
void divider(double complex *, s32 , s32, u16 *, u16 *);
void rev_subtractor(double complex *, s32 , s32, u16 *, u16 * );
void rev_divider(double complex *, s32 , s32, u16 *, u16 *);
void power(double complex *, s32 , s32, u16 *, u16 *);
void sq_root(double complex *, s32 , s32, u16 *, u16 *);
void sine(double complex *, s32 , s32, u16 *, u16 *);
void cosine(double complex *, s32 , s32, u16 *, u16 *);
void tangent(double complex *, s32 , s32, u16 *, u16 *);
void exponential(double complex *, s32 , s32, u16 *, u16 *);
void nat_log(double complex *, s32 , s32, u16 *, u16 *);
void logarithm(double complex *, s32 , s32, u16 *, u16 *);


//Other function declarations
void calculation(u16 ,double complex *,s32 ,s32 ,u16 *,u16 *);
void displayNumber(s16 ,u16 );
void input_shift(s16 *, s16 *, s16 *);
void value_detection(double *, double *, u16 , u16 , u16 *, u16 *);


/* ---------------------------------------------------------------------------- */

#endif /* OPERATIONS_H_ */
