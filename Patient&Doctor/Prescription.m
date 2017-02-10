//
//  Prescription.m
//  Patient&Doctor
//
//  Created by Ali Barış Öztekin on 2017-02-09.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "Prescription.h"

#import "Patient.h"
#import "UserInput.h"
#import "Doctor.h"


@implementation Prescription


- (instancetype)init
{
    self = [super init];
    if (self) {
        _prescriptionDataBase = [NSMutableDictionary new];
    }
    return self;
}
-(NSString*) precriptionCheck
{
    return @"test";
}

+(Patient*) prescriptionPasser:(Patient*) aPatient{
    
    [writePrescriptionFor:(Patient*) aPatient withPrescriptionController:(Prescription*) prescriptionController
    {
        
        [prescriptionController prescriptionWriter:aPatient];

    
}

-(void) prescriptionWriter:(Patient*) aPatient
{
    
    NSLog(@"Enter patient prescriptions seperated by a comma\n");
    NSString* prescriptionsString = [UserInput getInput];
    NSArray* prescriptionsArray= [prescriptionsString componentsSeparatedByString:@","];
    
    if(_prescriptionDataBase[aPatient.description]){
        NSMutableArray* totalPrescription = [NSMutableArray arrayWithArray:aPatient.prescriptions];
        [totalPrescription addObjectsFromArray:prescriptionsArray];
        [self.prescriptionDataBase setObject:totalPrescription forKey:aPatient.description];
    }
    else if (!_prescriptionDataBase[aPatient.description]){
        [self.prescriptionDataBase setObject:prescriptionsArray forKey:aPatient.description];
    }
        
    [aPatient.prescriptions addObjectsFromArray:prescriptionsArray];
}


@end
