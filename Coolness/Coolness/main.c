//
//  main.c
//  Coolness
//
//  Created by Light Clarke on 11/26/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <readline/readline.h>

int main(int argc, const char * argv[]) {

    printf("who is cool? ");
    const char *name = readline(NULL);
    printf("%s is cool!\n\n", name);
    return 0;
    
    
    
}

