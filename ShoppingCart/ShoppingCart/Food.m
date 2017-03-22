//
//  Food.m
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "Food.h"

@implementation Food


-(id) initWithFoodID:(int)foodID
            foodName:(NSString*)foodName
           foodPrice:(float)foodPrice
         foodCalorie:(int)foodCalorie
   foodMadeInCountry:(NSString*) foodMadeInCountry
     foodIngredients:(NSArray<NSString*>*) foodIngredients
            foodSize:(int)foodSize
{
    self = [super initWithProductID:foodID productName:foodName productPrice:foodPrice productMadeInCountry:foodMadeInCountry];
    
    if (self)
    {
        self.foodCalorie = foodCalorie;
        self.foodIngredients = foodIngredients;
        self.foodSize = foodSize;
    }
    
    return self;
}

-(float)returnProductPrice{
//    float price;
//    price = self.productPrice * self.foodSize;
//    return self.returnFoodPrice;
    
    return self.productPrice * self.foodSize;
}



@end
