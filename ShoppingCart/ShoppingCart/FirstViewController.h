//
//  FirstViewController.h
//  ShoppingCart
//
//  Created by sherry on 2017/03/20.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *firstTableView;

@end
