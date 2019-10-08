//
//  TRWCharacter.h
//  Hogwarts-C
//
//  Created by Travis Wheeler on 10/8/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRWCharacter : NSObject

// name, house, bloodStatus, deathEater, role

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly, nullable) NSString *house;
@property (nonatomic, copy, readonly) NSString *bloodStatus;
@property (nonatomic, readonly) BOOL deathEater;
@property (nonatomic, copy, readonly) NSString *role;


- (TRWCharacter *)initWithName:(NSString *)name
                         house:(NSString *)house
                   bloodStatus:(NSString *)bloodStatus
                    deathEater:(BOOL)deathEater
                          role:(NSString *)role;

@end

@interface TRWCharacter (JSONConvertable)

- (instancetype) initWithDictionary: (NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
