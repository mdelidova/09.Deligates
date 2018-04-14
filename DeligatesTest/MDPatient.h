//
//  MDPatient.h
//  DeligatesTest
//
//  Created by Maryna Delidova on 4/11/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MDPatientDelegate;

@interface MDPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <MDPatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePil;
- (void) makeShot;

@end

@protocol MDPatientDelegate <NSObject>
@required
- (void) patientFeelsBad:(MDPatient*) patient;
- (void) patient:(MDPatient*) patient hasQuestion: (NSString*) question;

@end
