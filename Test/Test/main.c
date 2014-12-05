//
//  main.c
//  Test
//
//  Created by Light Clarke on 11/19/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>  // malloc() and free() are in stdlib.h


typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;
float bodyMassIndex(Person *p)
{
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}
int main(int argc, const char * argv[])
{
    

return 0;
}