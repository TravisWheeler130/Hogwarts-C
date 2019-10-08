//
//  TRWCharacter.m
//  Hogwarts-C
//
//  Created by Travis Wheeler on 10/8/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

#import "TRWCharacter.h"

static NSString * const kName = @"name";
static NSString * const kHouse = @"house";
static NSString * const kBloodStatus = @"bloosStatus";
static NSString * const kDeathEater = @"deathEater";
static NSString * const kRole = @"role";

@implementation TRWCharacter

- (TRWCharacter *)initWithName:(NSString *)name house:(NSString *)house bloodStatus:(NSString *)bloodStatus deathEater:(BOOL)deathEater role:(NSString *)role
{
    self = [super init];
    if (self)
    {
        _name = name;
        _house = house;
        _bloodStatus = bloodStatus;
        _deathEater = deathEater;
        _role = role;
    }
    return self;
}

@end

@implementation TRWCharacter (JSONConvertable)

- (instancetype) initWithDictionary: (NSDictionary<NSString *, id> *)dictionary
{
//    let name = dictionary["name"];
    
    NSString *name = dictionary[kName];
    NSString *house = dictionary[kHouse];
    NSString *bloodStatus = dictionary[kBloodStatus];
    BOOL deathEater = dictionary[kDeathEater];
    NSString *role = dictionary[kRole];
    
    return [self initWithName:name
                        house:house
                  bloodStatus:bloodStatus
                   deathEater:deathEater
                         role:role];
}

@end
