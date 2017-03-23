//
//  ItemTableViewCell.h
//  ShoppingCart
//
//  Created by sherry on 2017/03/22.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *perPrice;
@property (weak, nonatomic) IBOutlet UILabel *size;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UILabel *nameOfProduct;

@end
