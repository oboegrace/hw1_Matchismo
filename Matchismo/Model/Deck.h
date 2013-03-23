//
//  Deck.h
//  Matchismo
//
//  Created by Grace on 13/2/25.
//  Copyright (c) 2013年 oboegrace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


- (void)addCard:(Card *)card atTop:(BOOL)atTop;
//method - addCard:atTop with 2 arguments and returns nothing

- (Card *)drawRandomCard;
//takes no arguments and returns a Card

@end
