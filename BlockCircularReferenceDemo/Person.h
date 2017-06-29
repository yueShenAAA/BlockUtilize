//
//  Person.h
//  BlockCircularReferenceDemo
//
//  Created by cuzZLYues on 2017/6/28.
//  Copyright © 2017年 cuzZLYues. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 typedef 定义一个blcok
 */
typedef void (^block) (NSString * name,NSInteger age);

@interface Person : NSObject

@property (nonatomic,strong)block myBlock; //设置一个blcok属性

//这个run方法的返回值是一个 block ，那么这个block的返回值是 - 方法的调用者 p 对象的类型 Person *
- (Person *(^)(int a))run;

-(void)runs:(void(^)())runBlock;

@end
