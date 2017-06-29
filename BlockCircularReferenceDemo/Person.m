//
//  Person.m
//  BlockCircularReferenceDemo
//
//  Created by cuzZLYues on 2017/6/28.
//  Copyright © 2017年 cuzZLYues. All rights reserved.
//

#import "Person.h"

@implementation Person


- (Person * (^)(int a))run{

    //这个方法返回一个block
    return ^Person *(int a){
    
        
        NSLog(@"跑了%d圈了",a);
        
        
       //block的返回值是 self （Person * 类型）
        return self;
    };

}

-(void)runs:(void(^)())runBlock{
    
    NSLog(@"一起跑步吧！");
    
    runBlock();
    
}

@end
