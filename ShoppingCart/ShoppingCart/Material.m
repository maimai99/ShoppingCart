//
//  Material.m
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "Material.h"

@implementation Material


-(id)initWithMaterialCode:(int)materialCode
             materialName:(NSString*)materialName
{
    self = [super init];
        if(self){
            self.materialCode = materialCode;
            self.materialName = materialName;
        }
    return self;
}

-(NSMutableArray<Material*>*) materials
{
    Material *material1 = [[Material alloc]initWithMaterialCode:10 materialName:@"Cotton"];
    Material *material2 = [[Material alloc]initWithMaterialCode:11 materialName:@"Nylon"];
    
    NSMutableArray<Material*> *allMaterials = [[NSMutableArray alloc] initWithObjects:material1, material2, nil];
    
    return allMaterials;
}

@end
