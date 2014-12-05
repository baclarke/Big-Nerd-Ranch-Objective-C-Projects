//
//  main.c
//  Addresses
//
//  Created by Light Clarke on 11/27/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    signed short x = -32768;
    
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(i));
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    printf("A float is %zu bytes\n", sizeof(x));
    printf(" x is %d\n", x);
    
    return 0;
}
