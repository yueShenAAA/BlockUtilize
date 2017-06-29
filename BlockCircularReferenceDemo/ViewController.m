//
//  ViewController.m
//  BlockCircularReferenceDemo
//
//  Created by cuzZLYues on 2017/6/28.
//  Copyright © 2017年 cuzZLYues. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
/**    */
@property (nonatomic,strong) Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    Person * p = [[Person alloc]init];
    
    // 第一种 ：block 回调
    p.myBlock = ^(NSString *name, NSInteger age) {
        
        NSLog(@"我的名字叫%@ 今年%ld岁了",name,age);
    };
    
    _p = p;
    
    //第二种：block作为参数
    [p runs:^{
        
        NSLog(@"跑完洗澡澡");
    }];
    
    //第三种：block作为返回值
    /*
     现在我传一个参数！
     
     p.run 这一步是一个get方法他的返回值是一个带参数的block，也就是这一坨：
     
     return ^Person *(int a){
     
     NSLog(@"跑了%d圈了",a);
     
     //block的返回值是 self （Person * 类型）
     return self;
     };
     
     p.run(10) 到了这一步，它的返回值就是一个Person对象，所以怎么样，我们能继续点语法一直点点点。。
     
     p.run(10).run(19).run(20);
     */
    p.run(10).run(19).run(20);
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //block 传进两个参数
    NSString * name = @"LY";
    NSInteger age = 18;
    
    _p.myBlock(name, age);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
