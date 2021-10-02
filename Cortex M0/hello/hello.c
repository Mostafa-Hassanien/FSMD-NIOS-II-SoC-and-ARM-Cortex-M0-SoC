#ifdef CORTEX_M0
#include "CMSDK_CM0.h"
#include "core_cm0.h"
#endif

#ifdef CORTEX_M0PLUS
#include "CMSDK_CM0plus.h"
#include "core_cm0plus.h"
#endif

#include <stdio.h>

int main (void){
   	//inputing the two 3x3 matrices
    int a[9] = {1,2,3,5,0,1,2,3,7};
    int b[9] = {3,2,0,0,1,0,5,6,4};
    
    int c[9];
		
		int i;
		int j;
		int x;
		
		//initializing GPIO0
		CMSDK_GPIO0->OUTENABLESET = 0xFFFF;
		CMSDK_GPIO0->ALTFUNCCLR = 0xFFFF;

		//multiplication loops
    for( i = 0;i < 3;i++){
        for( j = 0;j < 3;j++){   
            c[3*i + j] = 0;
            for( x = 0;x < 3;x++){
                 c[3*i + j] = c[3*i + j] + (a[3*i + x] * b[j + 3*x]);
            }
						//outputing value of the array element on LEDs connected to GPIO0 first 9 pins
						CMSDK_GPIO0->DATA = c[3*i + j];
        }
    }
		
    return 0;
}

