//
//  Card.m
//  Matchismo
//
//  Created by Grace on 13/2/25.
//  Copyright (c) 2013 Feb. oboegrace. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

@synthesize contents = _contents;

//SETTER OF CONTENTS
- (NSString *)contents
{
    return _contents;
}

//GETTER OF CONTENTS returns nothing
- (void)setContents:(NSString *)contents
{
    _contents = contents;
}

//METHOD MATCH
- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
}

@end
