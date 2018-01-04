//
//  ViewController.m
//  GCDDemo
//
//  Created by 张剑 on 16/4/29.
//  Copyright © 2016年 张剑. All rights reserved.
//

#import "ViewController.h"
#import "ZJUser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *xiaoming = @"小明";
    
    ZJUser *user = [[ZJUser alloc]init];
    user.myCopyName = xiaoming;
    user.strongName = xiaoming;
    
    NSLog(@"xiaoming指针: %p",xiaoming);
    NSLog(@"myCopyName指针: %p",user.myCopyName);
    NSLog(@"strongName指针: %p",user.strongName);
    
    NSMutableString *xiaohong = [NSMutableString stringWithFormat:@"小红"];
    
    user.myCopyName = xiaohong;
    user.strongName = xiaohong;
    user.myCopyName2 = user.myCopyName;
    NSLog(@"xiaohong指针: %p",xiaohong);
    NSLog(@"myCopyName指针: %p",user.myCopyName);
    NSLog(@"myCopyName2指针: %p",user.myCopyName2);
    NSLog(@"strongName指针: %p",user.strongName);
    
//    dispatch_queue_t mainQueue = dispatch_get_main_queue();
//    
//    dispatch_queue_t highQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
//    dispatch_queue_t dafaultQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_queue_t lowQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
//    dispatch_queue_t backgroundQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
//    
//    //DISPATCH_QUEUE_SERIAL 串行
//    //DISPATCH_QUEUE_CONCURRENT 并行
//    dispatch_queue_t myQueue = dispatch_queue_create("cn.psvmc.task", DISPATCH_QUEUE_CONCURRENT);
//    
//    dispatch_async(mainQueue, ^{
//        NSLog(@"mainQueue");
//    });
//    
//    dispatch_async(backgroundQueue, ^{
//        NSLog(@"backgroundQueue");
//    });
//    
//    dispatch_async(lowQueue, ^{
//        NSLog(@"lowQueue");
//    });
//    
//    dispatch_async(dafaultQueue, ^{
//        NSLog(@"dafaultQueue");
//    });
//    
//
//    for (int i = 0; i<10; i++) {
//        dispatch_async(highQueue, ^{
//            NSLog(@"highQueue:%d",i);
//        });
//    }
//    
//    for (int i = 0; i<10; i++) {
//        dispatch_async(myQueue, ^{
//            NSLog(@"myQueue:%d",i);
//        });
//    }
//    
//    static dispatch_once_t onceToken;
//    for (int i = 0; i<10; i++) {
//        // 一次性执行：
//        dispatch_once(&onceToken, ^{
//            NSLog(@"dispatch_once:%d",i);
//        });
//    }
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
