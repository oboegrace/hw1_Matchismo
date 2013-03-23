//
//  PlayingCard.h
//  Matchismo
//
//  Created by Grace on 13/2/25.
//  Copyright (c) 2013年 oboegrace. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end
