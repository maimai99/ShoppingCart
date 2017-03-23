//
//  FirstViewController.m
//  ShoppingCart
//
//  Created by sherry on 2017/03/20.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "FirstViewController.h"
#import "NaviController.h"
#import "InputViewController.h"

@interface FirstViewController ()

@property (strong,nonatomic) NSArray<NSString*>* textLabels;
@property (strong,nonatomic) NSArray<NSString*>* icons;
@property (weak, nonatomic) IBOutlet UILabel *totalPriceLabel;


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

-(void)viewWillAppear:(BOOL)animated{
    
    //取得＝箱に代入           //いんすたんす
    self.items = ((NaviController*)(self.navigationController)).items;
    [self showPrice];
}

-(void)showPrice{
    
    float totalPrice;
    
    for(int i = 0;i < self.items.count;i++){
        
        totalPrice += self.items[i].productPrice;
    }
    
    self.totalPriceLabel.text = [NSString stringWithFormat:@"Total is%.2f",totalPrice];
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




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // どのsequeか特定するためのif
    if([segue.identifier isEqualToString:@"FirstToInputView"]){
    
        // view controller(次の画面)のinstance
        InputViewController *controller = [segue destinationViewController];
        
        // senderをUITableView形式にキャスティングして代入
        UITableViewCell *cell = (UITableViewCell*)sender;
        
        // self.firstTableView内から上の*cellにマッチするcellのindexPathを代入する
        NSIndexPath *indexPath = [self.firstTableView indexPathForCell:cell];
        
        // indexPathのrowを代入　＝　foodかdrinkかclothかって番号
        controller.indexPathRow = indexPath.row;
    }
    
    
}


@end
