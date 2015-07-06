//
//  IZhongTuanshoppingtrolleyViewController.m
//  ZhongTuan
//
//  Created by anddward on 15/5/20.
//  Copyright (c) 2015年 TeamBuy. All rights reserved.
//

#import "IZhongTuanshoppingtrolleyViewController.h"
#import "ZTTitleLabel.h"
#import "SaleController.h"
#import "HomeTabBarController.h"
@interface IZhongTuanshoppingtrolleyViewController ()
{UIView*titleview;
UIButton*bt;
UIImageView*tubiao;
UILabel*label;
UIView*view;
}
@end

@implementation IZhongTuanshoppingtrolleyViewController
-(void)viewDidLoad{

[super viewDidLoad];
[self initTitleView];
[self initView];

}
-(void)viewWillAppear:(BOOL)animated{

[super viewWillAppear:animated];
self.tabBarController.tabBar.hidden=NO;
self.navigationController.navigationBar.hidden=NO;

}
-(void)initTitleView{
titleview=[[ZTTitleLabel alloc]initWithTitle:@"购物车"];
[titleview fitSize];
self.navigationItem.titleView=titleview;

}
-(void)initView{
self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"app_bg"]];
view=[[UIView alloc]init];
 tubiao=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"shopbug"]];
label=[[UILabel alloc]init];
label.text=@"你购物车没有商品";
label.font=[UIFont systemFontOfSize:12];
bt=[[UIButton alloc]init];
//view.backgroundColor=[UIColor redColor];
[view addSubViews:@[tubiao,label,bt]];
[[[[[tubiao fitSize]setRectMarginTop:5]setRectMarginLeft:89]setRectHeight:60]setRectWidth:40];
[[[[label fitSize]setRectBelowOfView:tubiao]addRectY:7]setRectMarginLeft:58];
[[[[[bt  fitSize] setRectBelowOfView:label]setRectX:7] setRectHeight:40]setRectWidth:210];
[view wrapContents];
[self.view addSubview:view];
[bt setTitle:@"随便逛逛" forState: UIControlStateNormal];


//[bt setImage:[UIImage imageNamed:@"activebtn_no_select"] forState: UIControlStateNormal];
//[bt setImage:[UIImage imageNamed:@"activebtn_select"] forState:UIControlStateHighlighted];

[bt setBackgroundImage:[UIImage imageNamed:@"activebtn_no_select"] forState:UIControlStateNormal];
[bt setBackgroundImage:[UIImage imageNamed:@"activebtn_select"] forState:UIControlStateHighlighted];


    [bt addTarget:self action:@selector(gotoshouye:) forControlEvents:UIControlEventTouchUpInside];
    //bt.layer.cornerRadius=8.0;
    

}

-(void)viewDidLayoutSubviews{
 [view setRectCenterInParent];
 
}
-(void)gotoshouye:(UIButton*)sender{
NSLog(@"hah");
HomeTabBarController*vc=[HomeTabBarController new];
//[self.navigationController pushViewController:vc animated:YES];

   [self presentViewController:vc animated:YES completion:nil];
   // UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//    
//    [self presentViewController:nav animated:YES completion:nil];
//

}
@end
