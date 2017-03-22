//
//  Cloth.h
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"


@interface Cloth : Product

@property int clothID;
@property (strong,nonatomic) NSString *clothName, *clothMadeInCountry;
@property (strong, nonatomic) NSArray<NSString*> *clothMaterials;
@property float  clothPrice;


-(id) initWithClothID:(int)clothID
            clothName:(NSString*)clothName
           clothPrice:(float)clothPrice
       clothMaterials:(NSArray<NSString*>*)clothMaterials
   clothMadeInCountry:(NSString*) clothMadeInCountry;




@end
