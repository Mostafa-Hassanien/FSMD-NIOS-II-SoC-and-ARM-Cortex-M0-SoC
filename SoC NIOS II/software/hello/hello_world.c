/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
# include <system.h>
# include <altera_avalon_pio_regs.h>

int main()
{
  int Matrix_A[3][3] = {
		  {1, 2, 3} ,
		  {5, 0, 1} ,
		  {2, 3, 7}
  };
  int Matrix_B[3][3] = {
		  {3, 2, 0} ,
		  {0, 1, 0} ,
		  {5, 6, 4}
  };
  int Matrix_C[3][3] = {
		  {0, 0, 0} ,
		  {0, 0, 0} ,
		  {0, 0, 0}
  };
  int i, j, k;
  int sum = 0;
 //----------------------------------- Matrix Multiplication Main Logic ------------------------------------------//
     for (i = 0; i <= 2; i++) {
        for (j = 0; j <= 2; j++) {
           sum = 0;
           for (k = 0; k <= 2; k++) {
              sum = sum + Matrix_A[i][k] * Matrix_B[k][j];
           }
           Matrix_C[i][j] = sum;
        }
     }
//---------------------------------------- Displaying Result Matrix C --------------------------------------------//
     for (i = 0; i < 3; i++) {
           for (j = 0; j < 3; j++) {
        	   IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, Matrix_C[i][j] );
           }
        }

  return 0;
}
