//
//  Drink.h
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Drink : Product

@property int drinkID,drinkSize;
@property (strong, nonatomic) NSString *drinkName, *drinkMadeInCountry;
@property BOOL isDrinkDiet;
@property float dinkPrice;


-(id) initWithDrinkID:(int)drinkID
            drinkSize:(int)drinkSize
            drinkName:(NSString*)drinkName
           drinkPrice:(float)drinkPrice
          isDrinkDiet:(BOOL)isDrinkDiet
   drinkMadeInCountry:(NSString*) drinkMadeInCountry;



@end
