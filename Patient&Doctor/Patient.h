//
//  Patient.h
//  Patient&Doctor
//
//  Created by Ali Barış Öztekin on 2017-02-09.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
@class UserInput;

@interface Patient : NSObject

@property (nonatomic,strong) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) BOOL hasHealthCard;
@property (nonatomic,strong) NSArray* symptoms;
@property (nonatomic, strong) NSMutableArray* prescriptions;

- (instancetype)initWithName:(NSString*)patientName age:(NSInteger)patientAge hasHealthCard: (BOOL) patientHealthCard withSymptoms: (NSArray*) patientSymptoms;
-(void) visitDoctor:(Doctor*) aDoctor;
-(void) requestMedication:(Doctor*) fromDoctor;
-(void) askInfo:(Doctor*) ofDoctor;



@end
