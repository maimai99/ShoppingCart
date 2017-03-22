//
//  Product.h
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//
@class Cloth;
@class Drink;
@class Food;

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property int productID;
@property (strong,nonatomic) NSString *productName, *productMadeInCountry;
@property float productPrice;

-(id) initWithProductID:(int)productID
            productName:(NSString*)productName
           productPrice:(float)productPrice
   productMadeInCountry:(NSString*)productMadeInCountry;

-(float)returnProductPrice;

@end
