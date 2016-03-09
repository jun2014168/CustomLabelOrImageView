//
//  ViewController.m
//  CustomLabelOrImageView
//
//  Created by 倪庆军 on 16/3/9.
//  Copyright © 2016年 jun. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "QJLabel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self customLabelTest];

    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.image = [UIImage imageNamed:@""];
    
    
    
    
    
    
}

#pragma mark - 自定义Label 点击复制label文本
- (void)customLabelTest
{
    UILabel *label1 = [[UILabel alloc] init];
    label1.textColor = [UIColor orangeColor];
    label1.font = [UIFont systemFontOfSize:14.0f];
    label1.numberOfLines = 0;
    label1.text = @"点我吧，我会一直看着你的，哈哈哈！";
    //    [label1 setBackgroundColor:[UIColor blueColor]];
    
    [self.view addSubview:label1];
    
    // 防止block中的循环引用
    __weak typeof (self) weakSelf = self;
    
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.mas_equalTo(CGSizeMake(300, 20));
        make.centerX.equalTo(weakSelf.view);
        make.top.offset(90);
    }];
    
    
    QJLabel *label2 = [[QJLabel alloc] init];
    label2.textColor = [UIColor redColor];
    label2.font = [UIFont systemFontOfSize:14.0f];
    label2.numberOfLines = 0;
    //    [label2 setBackgroundColor:[UIColor greenColor]];
    label2.text = @"点我呀，点我我可帮你复制内容到粘贴板哟！";
    
    [self.view addSubview:label2];
    
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 20));
        make.centerX.equalTo(label1);
        make.top.equalTo(label1.mas_bottom).with.offset(50);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
