//
//  main.c
//  CountDown
//
//  Created by Light Clarke on 11/26/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h> 
#include <unistd.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    
    printf("Where should I start counting? ");
    const char *y= readline(NULL);
    int i = atoi(y);
    for (;i>=0; (i-=3)) {
        if (i % 5 == 0) {
            printf("Found one! the number is %d.\n", i);
            continue;
        }
        printf("%d.\n", i);
    }
    return 0;
}
//int i=atoi(readline(NULL))