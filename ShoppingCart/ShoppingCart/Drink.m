//
//  Drink.m
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "Drink.h"

@implementation Drink

-(id) initWithDrinkID:(int)drinkID
            drinkSize:(int)drinkSize
            drinkName:(NSString*)drinkName
           drinkPrice:(float)drinkPrice
          isDrinkDiet:(BOOL)isDrinkDiet
   drinkMadeInCountry:(NSString*) drinkMadeInCountry;
{
    self = [super initWithProductID:drinkID productName:drinkName productPrice:drinkPrice productMadeInCountry:drinkMadeInCountry];
    
    if (self)
    {
        self.isDrinkDiet = isDrinkDiet;
        self.drinkSize = drinkSize;
    }
    
    return self;
}


@end
