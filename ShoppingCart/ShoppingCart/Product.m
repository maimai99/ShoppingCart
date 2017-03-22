//
//  Product.m
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "Product.h"

@implementation Product


-(id) initWithProductID:(int)productID
            productName:(NSString*)productName
           productPrice:(float)productPrice
   productMadeInCountry:(NSString*)productMadeInCountry
{
    self = [super init];
    
    if(self)
    {
        self.productID = productID;
        self.productName = productName;
        self.productPrice = productPrice;
        self.productMadeInCountry = productMadeInCountry;
    }
    
    return  self;
}

-(float)returnProductPrice{
    
    return self.productPrice;
}


@end
