//
//  FirstViewController.m
//  ShoppingCart
//
//  Created by sherry on 2017/03/20.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (strong,nonatomic) NSArray<NSString*>* textLabels;
@property (strong,nonatomic) NSArray<NSString*>* icons;


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.firstTableView.delegate = self;
    self.firstTableView.dataSource = self;
    self.textLabels = @[@"FOODS",@"DRINKS",@"CLOTHES"];
    self.icons = @[@"food",@"coffee",@"cloth"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView*)tableView
        cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    // indexPath.section sectionのインデックス番号
    // indexPath.row rowのインデックス番号
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FirstTableViewCell" forIndexPath:indexPath];
    cell.textLabel.text = self.textLabels[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.icons[indexPath.row]];
    
    return cell;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
//    if(section == 0){
//        
//        return self.itemForSection0.count;
//        
//    }else{ //section == 1
//        
//        return self.itemForSection1.count;
//        
//    }
    return 3;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
