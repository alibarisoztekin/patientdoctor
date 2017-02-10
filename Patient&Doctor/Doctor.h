//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Ali Barış Öztekin on 2017-02-09.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;
@class UserInput;
@class Prescription;

@interface Doctor : NSObject

@property (nonatomic,strong) NSString* name;
@property (nonatomic,strong) NSString* specialiation;
@property (nonatomic,strong) NSMutableArray* acceptedPatients;

- (instancetype)initWithName:(NSString*)doctorName specialization:(NSString*)doctorSpecialization;
-(void) acceptPatient:(Patient*) aPatient;
-(void) writePrescriptionFor:(Patient*) aPatient withPrescriptionController:(Prescription*) PrescriptionController;
-(void) askInfo:(Patient*) ofPatient;
-(void) accessPrescriptions:(Patient*) ofPatient;
-(Patient*) prescriptionRequestPasser: (Patient*) aPatient;


@end
