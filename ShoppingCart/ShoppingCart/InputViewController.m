//
//  InputViewController.m
//  ShoppingCart
//
//  Created by sherry on 2017/03/20.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "InputViewController.h"
#import "InputTableViewCell.h"

#import "Food.h"
#import "Drink.h"
#import "Cloth.h"
#import "NaviController.h"

@interface InputViewController ()

@property (strong,nonatomic) Product *item;
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
- (IBAction)buttonClicked:(id)sender {
    //navi controllerのitemに代入したい
    NSIndexPath *indexPath;
    InputTableViewCell *cell;
    NSMutableArray<NSString*>* userInputData = [[NSMutableArray<NSString*> alloc]init];
    
    for(int i = 0;i < self.labelForInput.count;i++){
        
        indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        cell = [self.inputTableView cellForRowAtIndexPath:indexPath];


        [userInputData addObject:cell.InputTextField.text];
        
    }
    
    
    // ひとつずつ値を代入したい
    // あとでdrinkとか分岐つくる
    self.item = [[Food alloc]initWithFoodID:234
                                   foodName:@"chicken"
                                  foodPrice:3.0
                                foodCalorie:400 foodMadeInCountry:@"Canada"
                            foodIngredients:@[@"chicken",@"salt"]
                                   foodSize:100];
    
    
    [((NaviController*)(self.navigationController)).items addObject:self.item];
    
            // 独自メソッド                // 画面遷移の時アニメーションがつく
    [[self navigationController] popViewControllerAnimated:YES];
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
 
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//     Get the new view controller using [segue destinationViewController].
//     Pass the selected object to the new view controller.
//}


@end
