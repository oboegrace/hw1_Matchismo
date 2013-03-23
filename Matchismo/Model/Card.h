//
//  Card.h
//  Matchismo
//
//  Created by Grace on 13/2/25.
//  Copyright (c) 2013 Feb. oboegrace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otehrCards;

@end
