//
//  InputViewController.m
//  ShoppingCart
//
//  Created by sherry on 2017/03/20.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "InputViewController.h"
#import "InputTableViewCell.h"
#import "FirstViewController.h"
#import "Food.h"
#import "Drink.h"
#import "Cloth.h"
#import "NaviController.h"

@interface InputViewController ()

@property (strong,nonatomic) Product *item;
@property (strong,nonatomic) NSArray<NSString*>* textFieldForInput1;
@property (strong,nonatomic) NSArray<NSString*>* labelForInput1;
@property (strong,nonatomic) NSArray<NSString*>* textFieldForInput2;
@property (strong,nonatomic) NSArray<NSString*>* labelForInput2;
@property (strong,nonatomic) NSArray<NSString*>* textFieldForInput3;
@property (strong,nonatomic) NSArray<NSString*>* labelForInput3;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.inputTableView.delegate = self;
    self.inputTableView.dataSource = self;
    
    self.textFieldForInput1 = @[@"234",@"Chicken",@"100",@"5.0",@"250",@"chicken,salt",@"Canada"];
    self.labelForInput1 = @[@"Food ID",@"Food Name",@"Food Size",@"Food Price",@"Food Calorie",@"Food Ingredient",@"Made in Country"];
    
    self.textFieldForInput2 = @[@"345",@"Pepshi",@"150",@"2.0",@"YES",@"USA"];
    self.labelForInput2 = @[@"Drink ID",@"Drink Name",@"Drink Size",@"Drink Price",@"Drink Diet",@"Made in Country"];
    
    self.textFieldForInput3 = @[@"456",@"T-Shirt",@"Nylon,Cotton",@"14.0",@"China"];
    self.labelForInput3 = @[@"Cloth ID",@"Cloth Name",@"Cloth Price",@"Cloth Materials",@"Made in Country"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(self.indexPathRow == 0){
        
        return self.labelForInput1.count;
        
    }else if(self.indexPathRow == 1){
        
        return self.labelForInput2.count;
        
    }else{
        
        return self.labelForInput3.count;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    InputTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InputTableViewCell" forIndexPath:indexPath];
    
    // cellがまだinitializeされてなかったらする
    if(!cell){
        cell = [[InputTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"InputTableViewCell"];
    }
    
    if(self.indexPathRow == 0){
                                                        //for使わなくてもインクリメントされて
        cell.InputTextField.text = self.textFieldForInput1[indexPath.row];
        cell.inputLabel.text = self.labelForInput1[indexPath.row];
        
    }else if(self.indexPathRow == 1){
        
        cell.InputTextField.text = self.textFieldForInput2[indexPath.row];
        cell.inputLabel.text = self.labelForInput2[indexPath.row];
        
    }else{
        
        cell.InputTextField.text = self.textFieldForInput3[indexPath.row];
        cell.inputLabel.text = self.labelForInput3[indexPath.row];
    }
    
    return cell;
}
- (IBAction)buttonClicked:(id)sender {
    //navi controllerのitemに代入したい
    NSIndexPath *indexPath;
    InputTableViewCell *cell;
    NSMutableArray<NSString*>* userInputData = [[NSMutableArray<NSString*> alloc]init];
    
    for(int i = 0;i < (self.labelForInput1.count || self.labelForInput2 || self.labelForInput3);i++){
        
        indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        cell = [self.inputTableView cellForRowAtIndexPath:indexPath];


        [userInputData addObject:cell.InputTextField.text];
        
    }
    

    // ひとつずつ値を代入したい
    // あとでdrinkとか分岐つくる
    if(self.indexPathRow == 0){
        
        self.item = [[Food alloc]initWithFoodID:234
                                       foodName:@"chicken"
                                      foodPrice:3.0
                                    foodCalorie:400 foodMadeInCountry:@"Canada"
                                foodIngredients:@[@"chicken",@"salt"]
                                       foodSize:100];
    }else if (self.indexPathRow == 1){
    
        self.item = [[Drink alloc]initWithDrinkID:345
                                        drinkSize:100 drinkName:@"Pepshi"
                                       drinkPrice:2.0
                                      isDrinkDiet:YES
                               drinkMadeInCountry:@"USA"];
    }else{
        
        self.item = [[Cloth alloc]initWithClothID:456
                                        clothName:@"T-Shirts"
                                       clothPrice:14.0
                                   clothMaterials:@[@"Nylon",@"Cotton"]
                               clothMadeInCountry:@"China"];
    }
    
    
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
