//
//  MDDoctor.h
//  DeligatesTest
//
//  Created by Maryna Delidova on 4/11/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDPatient.h"

@protocol MDPatientDelegate;

@interface MDDoctor : NSObject <MDPatientDelegate>

@end
