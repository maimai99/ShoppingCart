//
//  NaviController.h
//  ShoppingCart
//
//  Created by sherry on 2017/03/21.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"

@interface NaviController : UINavigationController

@property (strong,nonatomic) NSMutableArray<Product*>* items;

@end
