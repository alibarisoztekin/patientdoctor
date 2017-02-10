//
//  Prescription.h
//  Patient&Doctor
//
//  Created by Ali Barış Öztekin on 2017-02-09.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;
@class Doctor;

@interface Prescription : NSObject

@property (nonatomic,strong) NSMutableDictionary* prescriptionDataBase;

-(NSString*) precriptionCheck;
-(void) prescriptionWriter: (Patient*) aPatient;
+(Patient*) prescriptionPasser;
@end
