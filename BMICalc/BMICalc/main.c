//
//  main.c
//  BMICalc
//
//  Created by Light Clarke on 11/28/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>

//Here is the declaration of a struct with an alias (typedef) of "Person"
typedef struct {
    float heightInMeters;
    int weightInKilos;
    //created a struct member to hold the bmi
    float bmi;
}Person;

//function to use the Person struct data as Parameter and calculate the bmi
float bodyMassIndex(Person p){
    //bmi formula = person's weight divided by person's height squared
    return (p.weightInKilos / (p.heightInMeters * p.heightInMeters));
};

int main(int argc, const char * argv[]) {
    
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    //the bmi will be calculated using the bodyMassIndex function and Person mikey's members
    mikey.bmi = bodyMassIndex(mikey);
    
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    //the bmi will be calculated using the bodyMassIndex function and Person aaron's members
    aaron.bmi = bodyMassIndex(aaron);
    
    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
    printf("mikey's BMI is %.2f\n", mikey.bmi);
    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    printf("aaron's BMI is %.2f\n", aaron.bmi);
    return 0;
}
