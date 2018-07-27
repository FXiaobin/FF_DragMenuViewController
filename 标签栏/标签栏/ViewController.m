//
//  ViewController.m
//  标签栏
//
//  Created by IOS on 17/2/21.
//  Copyright © 2017年 xushuo All rights reserved.
//  

#import "ViewController.h"
#import "ChannelView.h"

@interface ViewController ()
@property (nonatomic, strong) ChannelView *channelView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *nav = [[UILabel alloc]init];
    nav.text = @"标签";
    nav.frame = CGRectMake(0, 0, self.view.frame.size.width, 64);
    nav.textAlignment = NSTextAlignmentCenter;
    nav.backgroundColor = [UIColor redColor];
    nav.font = [UIFont systemFontOfSize:20.0f];
    nav.textColor = [UIColor whiteColor];
    [self.view addSubview:nav];
    
    
    NSArray *upBtnDataArr = @[@"推荐",@"北京",@"社会",@"娱乐",@"问答",@"图片",@"财经",@"科技",@"汽车",@"体育",@"美女",@"健康",@"军事",@"国际",@"趣图",@"正能量",@"热点",@"手机",@"段子",@"房产",@"搞笑",@"历史",@"养生"];
    NSArray *belowBtnDataArr = @[@"情感",@"家具",@"教育",@"三农",@"孕产",@"文化",@"游戏",@"股票",@"科学",@"动漫",@"故事",@"收藏",@"精选",@"语录",@"星座",@"美图",@"推荐",@"北京",@"社会",@"娱乐",@"问答",@"图片",@"财经",@"科技",@"汽车",@"体育",@"美女",@"健康",@"军事",@"国际",@"趣图",@"正能量",@"热点",@"手机",@"段子",@"房产",@"搞笑",@"历史",@"养生",@"精选",@"语录",@"星座",@"美图",@"推荐",@"北京",@"社会",@"娱乐",@"问答",@"图片",@"财经",@"科技",@"汽车",@"体育",@"美女",@"健康",@"军事",@"国际",@"趣图",@"正能量",@"热点",@"手机",@"段子",@"房产",@"搞笑",@"历史",@"养生"];
    
    
    self.channelView = [[ChannelView alloc]initWithFrame:CGRectMake(0, nav.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-nav.frame.size.height)];
    self.channelView.backgroundColor = [UIColor whiteColor];
    //添加数据
    self.channelView.upBtnDataArr = upBtnDataArr;
    self.channelView.belowBtnDataArr = belowBtnDataArr;
    //每行按钮个数
    self.channelView.btnNumber = 5;
    //允许第一个按钮参与编辑
    self.channelView.IS_compileFirstBtn = YES;
    //设置按钮字体Font
    self.channelView.btnTextFont = 13.0f;
    //获取数据Block
    self.channelView.dataBlock = ^(NSMutableArray *dataArr) {
        for (NSString *upBtnText in dataArr) {
            NSLog(@"%@",upBtnText);
        }
    };
    [self.view addSubview:self.channelView];
    
}
@end
