//
//  MainViewController.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-5.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    QuestionBankViewController *question=[[QuestionBankViewController alloc]init];
    UINavigationController *navigation1=[[UINavigationController alloc]initWithRootViewController:question];
    WordSearchViewController *search=[[WordSearchViewController alloc]init];
    UINavigationController *navigation2=[[UINavigationController alloc]initWithRootViewController:search];
    ListeningViewController *listening=[[ListeningViewController alloc]init];
    UINavigationController *navigation3=[[UINavigationController alloc]initWithRootViewController:listening];
    NewWordViewController *newWord=[[NewWordViewController alloc ]init];
    UINavigationController *navigation4=[[UINavigationController alloc]initWithRootViewController:newWord];
    
    NSArray *array=[NSArray arrayWithObjects:navigation1,navigation2,navigation3,navigation4, nil];
    NSArray *array1=[NSArray arrayWithObjects:navigation1.view,navigation2.view,navigation3.view,navigation4.view, nil];
    tab=[[UITabBarController alloc]init];
    tab.viewControllers=array;
    tab.tabBar.tintColor=[UIColor clearColor];
    
    [self setTabBarImg:array1];
    question.grade=self.grade;
    
    [self.view addSubview:tab.view];
    
    [question release];
    [navigation1 release];
    [search release];
    [navigation2 release];
    [listening release];
    [navigation3 release];
    [newWord release];
    [navigation4 release];
}

-(void)setTabBarImg:(NSArray *)array
{
    NSArray *imgArray=[[NSArray alloc]initWithObjects:[UIImage imageNamed:@"smart_normal.png"],[UIImage imageNamed:@"dictionary_normal.png"],[UIImage imageNamed:@"listening_normal.png"],[UIImage imageNamed:@"more_normal.png"], nil];
    _first=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 80, 50)];
    _first.image=[imgArray objectAtIndex:0];
    [tab.tabBar insertSubview:self.first belowSubview:[array objectAtIndex:0]];
    _second=[[UIImageView alloc]initWithFrame:CGRectMake(80, 0, 80, 50)];
    _second.image=[imgArray objectAtIndex:1];
    [tab.tabBar insertSubview:self.second belowSubview:[array objectAtIndex:1]];
    _third=[[UIImageView alloc]initWithFrame:CGRectMake(80*2, 0, 80, 50)];
    _third.image=[imgArray objectAtIndex:2];
    [tab.tabBar insertSubview:self.third belowSubview:[array objectAtIndex:2]];
    _forth=[[UIImageView alloc]initWithFrame:CGRectMake(80*3, 0, 80, 50)];
    _forth.image=[imgArray objectAtIndex:3];
    [tab.tabBar insertSubview:self.forth belowSubview:[array objectAtIndex:3]];
    [imgArray release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_first release];
    [_second release];
    [_third release];
    [_forth release];
    [_imageViewArray release];
    [super dealloc];
}
@end
