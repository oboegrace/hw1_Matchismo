//
//  Deck.m
//  Matchismo
//
//  Created by Grace on 13/2/25.
//  Copyright (c) 2013年 oboegrace. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards; //of Card
//privately store a deck of cards

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    //lazy instantiation - create the cards array on the fly
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
        //insertObject and addObject are NSMutableArray methods.
    }else {
        [self.cards addObject:card];
    }
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if (self.cards.count){
        unsigned index = arc4random() % self.cards.count;   //randomly generate an index# between~cards.count
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
