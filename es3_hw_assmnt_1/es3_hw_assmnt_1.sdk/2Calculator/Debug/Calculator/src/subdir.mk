################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../Calculator/src/lscript.ld 

C_SRCS += \
../Calculator/src/gpio_init.c \
../Calculator/src/main.c \
../Calculator/src/operations.c \
../Calculator/src/platform.c \
../Calculator/src/seg7_display.c \
../Calculator/src/timer_interrupt_func.c \
../Calculator/src/xinterruptES3.c 

OBJS += \
./Calculator/src/gpio_init.o \
./Calculator/src/main.o \
./Calculator/src/operations.o \
./Calculator/src/platform.o \
./Calculator/src/seg7_display.o \
./Calculator/src/timer_interrupt_func.o \
./Calculator/src/xinterruptES3.o 

C_DEPS += \
./Calculator/src/gpio_init.d \
./Calculator/src/main.d \
./Calculator/src/operations.d \
./Calculator/src/platform.d \
./Calculator/src/seg7_display.d \
./Calculator/src/timer_interrupt_func.d \
./Calculator/src/xinterruptES3.d 


# Each subdirectory must supply rules for building sources it contributes
Calculator/src/%.o: ../Calculator/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../2Calculator_bsp/microblaze_0/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


