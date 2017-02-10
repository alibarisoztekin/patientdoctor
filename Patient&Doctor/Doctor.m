//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Ali Barış Öztekin on 2017-02-09.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@implementation Doctor

- (instancetype)initWithName:(NSString*)doctorName specialization:(NSString*)doctorSpecialization
{
    self = [super init];
    if (self) {
        _name = doctorName;
        _specialiation = doctorSpecialization;
        _acceptedPatients = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) acceptPatient:(Patient*) aPatient
{
    if (aPatient.hasHealthCard) {
        [self.acceptedPatients addObject:aPatient];
        NSLog(@"Patient %@ is accepted", aPatient.name);
    }
    else{
        NSLog(@"You need a health card to be accepted");
    }
}

-(void) prescriptionRequestPasser: (Patient*) aPatient
{
    if ([self.acceptedPatients containsObject:aPatient]){
        
        NSLog(@"Medication request passed.");
}
else{
    NSLog(@"Patient is not accepted");
}
    
}

-(void) writePrescriptionFor:(Patient*) aPatient withPrescriptionController:(Prescription*) prescriptionController
{

        [prescriptionController prescriptionWriter:aPatient];
    
}

-(void) askInfo:(Patient*) ofPatient
{
      NSLog(@" Patient Name: %@\n Patient Age: %li\n Patient Symtoms:\n", ofPatient.name, ofPatient.age);
    for (NSString* symptom in ofPatient.symptoms) {
        NSLog(@"%@",symptom);
    }
    
}

-(void) accessPrescriptions:(Patient*) ofPatient
{
    ;    
}


@end
