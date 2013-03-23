//
//  PlayingCard.m
//  Matchismo
//
//  Created by Grace on 13/2/25.
//  Copyright (c) 2013年 oboegrace. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents  //contents of Card.h but... why do we implement it here instead of Crad.m??
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    //return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;   //because we provide setter andgetter (w/o this line, there will be errors)

+ (NSArray *) validSuits
{   //+: class method (can be invoked directly on the class) 
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+ (NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
        //this is how a class method is invoked.
    {
        _suit = suit;
    }
}


- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+(NSUInteger)maxRank {return [self rankStrings].count-1;}


@end
