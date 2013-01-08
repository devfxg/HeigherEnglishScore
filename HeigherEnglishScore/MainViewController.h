//
//  MainViewController.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-5.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionBankViewController.h"
#import "ListeningViewController.h"
#import "NewWordViewController.h"
#import "WordSearchViewController.h"
@interface MainViewController : UIViewController
{
    UITabBarController *tab;
    

}
@property(assign,nonatomic)NSInteger grade;
@property(retain,nonatomic)NSArray *imageViewArray;
@property(retain,nonatomic)UIImageView *first;
@property(retain,nonatomic)UIImageView *second;
@property(retain,nonatomic)UIImageView *third;
@property(retain,nonatomic)UIImageView *forth;


-(void)setTabBarImg:(NSArray *)array;


@end
