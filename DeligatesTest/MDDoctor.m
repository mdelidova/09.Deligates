//
//  MDDoctor.m
//  DeligatesTest
//
//  Created by Maryna Delidova on 4/11/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import "MDDoctor.h"
#import "MDPatient.h"

@implementation MDDoctor

#pragma mark - MDPatientDelegate

- (void) patientFeelsBad:(MDPatient*) patient {
    NSLog(@"Patient %@ feels bad",patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f) {
        [patient takePil];
    } else if (patient.temperature > 39.f) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ should rest!", patient.name);
    }
}
- (void) patient:(MDPatient*) patient hasQuestion: (NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name);
}


@end
