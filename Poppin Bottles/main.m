//
//  main.m
//  Poppin Bottles
//
//  Created by David Manuntag on 2015-01-13.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>


//For every two empty bottles, you can get one free (full) bottle of pop
//For every four bottle caps, you can get one free (full) bottle of pop
//Each bottle of pop costs $2 to purchase

int bottles;
int capsreward;
int emptybottlesreward;
int enteredInvestment;

// function that will calculate # of redeemable rewards given the investment

int calculateBottles (int investment) {
    
    bottles = investment/2;
    capsreward = bottles/4;
    emptybottlesreward = bottles/2;
    
    return capsreward + emptybottlesreward;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // user enters the amount they spent, function returns the number of free pops they will recieve
        
        NSLog(@"Find out how many FREE POPS you can redeem,\nEnter how much you spent!");
        scanf("%d", &enteredInvestment);
        int investment =enteredInvestment;
        
        int howManyRewards = calculateBottles(investment);
        NSLog(@"\nYour $%d of Pop purchased %d bottles of pop,\nproduced %d free bottles through the caps rewards \nproduced %d free bottles through the empty bottles reward\nfor a total of %d free bottles!", investment, bottles, capsreward, emptybottlesreward,howManyRewards);
        
        
    }
    return 0;
}
