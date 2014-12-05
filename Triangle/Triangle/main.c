//
//  main.c
//  Triangle
//
//  Created by Light Clarke on 11/21/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>

static float Angle1 = 30;
static float Angle2 = 70;

float getTriangleLastAngle(Angle1, Angle2){
    float Angle3 = 180 - (Angle1 + Angle2);
    return Angle3;
}

int main(int argc, const char * argv[]) {
    float LastAngle = getTriangleLastAngle(Angle1, Angle2);
    printf("If A Triangle has a %f angle and a %f angle, then it's last angle must be %f.\n", Angle1, Angle2, LastAngle);
    return 0;
}
