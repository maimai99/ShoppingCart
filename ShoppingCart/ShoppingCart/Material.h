//
//  Material.h
//  Problem3_exam
//
//  Created by sherry on 2017/03/06.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Material : NSObject

@property int materialCode;
@property NSString *materialName;

-(id)initWithMaterialCode:(int)materialCode
             materialName:(NSString*)materialName;



@end
