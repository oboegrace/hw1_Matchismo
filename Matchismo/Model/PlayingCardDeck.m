//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Grace on 13/2/25.
//  Copyright (c) 2013年 oboegrace. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h" //因為要用到method:playingCard

@implementation PlayingCardDeck

-(id)init{
    self = [super init]; //send a message to 'super' ; assign value to 'self'
    
    if (self) {
        
        //go through every suit and create card and add it to ourself
        for (NSString *suit in [PlayingCard validSuits] ){
            for (NSUInteger rank = 1 ; rank <= [PlayingCard maxRank] ; rank++){
                PlayingCard *card = [[PlayingCard alloc] init]; //new a playing card
                card.rank = rank;                               //assign its rank
                card.suit = suit;                               //assign its suit
                //[self addCard:card atTop:YES];                  //add the card to Deck (Deck.h)[ERROR??]
            }
        }
    }
    return self;
}


@end
