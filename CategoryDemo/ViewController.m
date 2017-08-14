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
    [self testMMFastcoder];
}


-(void)testMMColor{
    
    
    UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [lable setCenter:self.view.center];
    [lable setBackgroundColor:[UIColor colorWithHexString:@"7F007F"]];
    [self.view addSubview:lable];
    

    
    
    
}
-(void)testMMFastcoder{
    NSArray *arr1 =@[@1,@2,@3,@4,@5,@6];
    [[MMFastCoder managerCenter]storeValue:arr1 withKey:@"yctest"];
    
    //下面是储存在用户目录下面的数据
    NSArray *arr =@[@1,@2,@3,@4,@5];
    NSString *file_name =@"yc.plist";
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *file_path =[path stringByAppendingPathComponent:file_name];
    [arr writeToFile:file_path atomically:YES];
    NSLog(@"%@",NSHomeDirectory());
}

@end
