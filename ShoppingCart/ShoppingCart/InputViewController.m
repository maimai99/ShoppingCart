//
//  InputViewController.m
//  ShoppingCart
//
//  Created by sherry on 2017/03/20.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "InputViewController.h"
#import "InputTableViewCell.h"

@interface InputViewController ()

@property (strong,nonatomic) NSArray<NSString*>* textFieldForInput;
@property (strong,nonatomic) NSArray<NSString*>* labelForInput;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.inputTableView.delegate = self;
    self.inputTableView.dataSource = self;
    self.textFieldForInput = @[@"234",@"Chicken",@"100",@"5",@"250",@"chicken,salt"];
    self.labelForInput = @[@"Food ID",@"Food Name",@"Food Size",@"Food Price",@"Food Calorie",@"Food Ingredient"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 6;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    InputTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InputTableViewCell" forIndexPath:indexPath];
    
    if(!cell){
        cell = [[InputTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"InputTableViewCell"];
    }
    
    cell.InputTextField.text = self.textFieldForInput[indexPath.row];
    cell.inputLabel.text = self.labelForInput[indexPath.row];
    
    return cell;
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
