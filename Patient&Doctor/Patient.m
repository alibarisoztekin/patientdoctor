//
//  Patient.m
//  Patient&Doctor
//
//  Created by Ali Barış Öztekin on 2017-02-09.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient


- (instancetype)initWithName:(NSString*)patientName age:(NSInteger)patientAge hasHealthCard: (BOOL) patientHealthCard withSymptoms: (NSArray*) patientSymptoms
{
    self = [super init];
    if (self) {
        _name = patientName;
        _age = patientAge;
        _hasHealthCard = patientHealthCard;
        _symptoms = patientSymptoms;
        _prescriptions = [NSMutableArray new];
    }
    return self;
}
-(void) visitDoctor:(Doctor*) aDoctor
{
    [aDoctor acceptPatient:self];
}
-(void) requestMedication:(Doctor*) fromDoctor
{
   [fromDoctor prescriptionRequestPasser:self];
    
}

-(void) askInfo:(Doctor*) ofDoctor
{
    NSLog(@" Doctor Name: %@\n Doctor Specialization: %@", ofDoctor.name, ofDoctor.specialiation);
}





@end
