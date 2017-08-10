//
//  ViewController.m
//  CategoryDemo
//
//  Created by yuchen_Mac on 2017/8/10.
//  Copyright © 2017年 yc. All rights reserved.
//

#import "ViewController.h"
#import "MMHeader.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testMMColor];
}


-(void)testMMColor{
    
    UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [lable setCenter:self.view.center];
    [lable setBackgroundColor:[UIColor colorWithHexString:@"7F007F"]];
    [self.view addSubview:lable];
}


@end
