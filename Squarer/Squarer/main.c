//
//  main.c
//  Squarer
//
//  Created by Light Clarke on 11/24/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int getSquare(int num1){
    int squaredNum = num1 * num1;
    return squaredNum;
}

int main(int argc, const char * argv[]) {
    int mynum = 10;
    int mynumSquared = getSquare(mynum);
    printf("\"%d\" squared is \"%d\"\n", mynum, mynumSquared);
    return 0;
}
