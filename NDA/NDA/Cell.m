//
//  Cell.m
//  NDA
//
//  Created by Nestor on 11.11.12.
//  Copyright (c) 2012 Nestor. All rights reserved.
//

#import "Cell.h"



@implementation Cell 
-(id) init {
    self = [super init];
    self.dnaLength = 100;
    if (self) {
        self.DNA = [NSMutableArray arrayWithCapacity: self.dnaLength];
        self.letters = [NSArray arrayWithObjects: @"A", @"T", @"G", @"C", nil];
        for (int i = 0; i < self.dnaLength; i++) {
            int x = arc4random() % 4;
            [self.DNA addObject:self.letters[x]];
        }
    }
    return self;
}

-(int) hammingDistance: (Cell*) cell {
    int distance = 0;
    for (int i=0; i<self.dnaLength; i++) {
        if (self.DNA[i] != cell.DNA[i]) {
            distance++;
        }
    }
    return distance;
}



@end
