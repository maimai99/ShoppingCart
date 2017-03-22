//
//  Food.h
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Food : Product

@property int foodSize;
@property (strong,nonatomic) NSArray<NSString*>* foodIngredients;
@property int foodCalorie;



-(id) initWithFoodID:(int)foodID
           foodName:(NSString*)foodName
          foodPrice:(float)foodPrice
         foodCalorie:(int)foodCalorie
   foodMadeInCountry:(NSString*) foodMadeInCountry
     foodIngredients:(NSArray<NSString*>*) foodIngredients
            foodSize:(int)foodSize;



-(float)returnFoodPrice;



@end
