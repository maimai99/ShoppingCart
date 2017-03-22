//
//  Cloth.m
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "Cloth.h"
#import "Material.h"

@implementation Cloth


-(id) initWithClothID:(int)clothID
            clothName:(NSString*)clothName
           clothPrice:(float)clothPrice
       clothMaterials:(NSArray<NSString*>*)clothMaterials
   clothMadeInCountry:(NSString*) clothMadeInCountry;
{
    self = [super initWithProductID:clothID productName:clothName productPrice:clothPrice productMadeInCountry:clothMadeInCountry];
    
    if (self)
    {
        self.clothMaterials = clothMaterials;
    }
    
    return self;
}

@end
