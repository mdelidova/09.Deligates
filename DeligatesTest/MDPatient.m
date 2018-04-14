//
//  MDPatient.m
//  DeligatesTest
//
//  Created by Maryna Delidova on 4/11/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import "MDPatient.h"

@implementation MDPatient

- (BOOL) howAreYou {
    
    BOOL IFeelGood = arc4random() % 2;
    
    if (!IFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    return IFeelGood;
}

- (void) takePil {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ makes a shot", self.name);
}

@end
