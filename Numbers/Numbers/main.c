//
//  main.c
//  Numbers
//
//  Created by Light Clarke on 11/24/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h> 


int main(int argc, const char * argv[]) {
    float y = 12345.6789;
    //the %.2f means:  f is used for floating point (numbers with decimals); the .2 tells us how much places after the decimal point to display.
    printf("y is %.2f\n", y);
    //the e in %.2e tells it to display the number in scientific notation.
    printf("y is %.2e\n", y);
    
    //declaring x as a double
    double x = 1.0;
    
    //getting the sin of x using the sin function and assigning it to "sinOfx".
    double sinOfx = sin(x);
    
    //displaying it at the terminal
    printf("the sin of %.0f is %.3f.\n", x, sinOfx);
    

    return 0;
}
