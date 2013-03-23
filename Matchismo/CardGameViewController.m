//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Grace on 13/2/23.
//  Copyright (c) 2013年 oboegrace. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
//PRIVATE PROPERTY GOES HERE
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
//IBOutput-告訴xcode這不是random property, 而是一個outlet
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController //NO super class specified here

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

//implement SETTER for CardButtons
-(void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons; //setter 一定要有這行，不然settle won't set anymore...(why?)
    for (UIButton *cardButton in cardButtons){
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
    
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected; //isSeltected是在哪裡定義的？Ans:按Alt
    /*
    if (sender.isSelected){
        sender.selected = NO ;
    } else {
        sender.selected = YES;
    }
    */
    self.flipCount++;
}

@end
