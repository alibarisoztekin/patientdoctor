//
//  main.m
//  Patient&Doctor
//
//  Created by Ali Barış Öztekin on 2017-02-09.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"
#import "UserInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Prescription* prescriptionController = [[Prescription alloc] init];
        NSLog(@"Welcome to Patient&Doctor\n\n\n");
      
        
        
        Doctor* doctorOne = [[Doctor alloc]initWithName:@"Gregory House" specialization:@"Diagnostic Medicine"];
        Patient* patientOne =[[Patient alloc]initWithName:@"Michael Scott" age:42 hasHealthCard:YES withSymptoms:@[@"Headaches",@"Rashes"]];
                              
        [patientOne visitDoctor:doctorOne];
        [patientOne requestMedication:doctorOne];
        
       
    }
    return 0;
}
