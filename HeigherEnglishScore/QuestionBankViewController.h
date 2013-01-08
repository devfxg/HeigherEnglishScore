//
//  QuestionBankViewController.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-5.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionListViewController.h"
@interface QuestionBankViewController : UIViewController<UIScrollViewDelegate>
{
    NSInteger prevButtonIndex;
}
@property (assign, nonatomic)NSInteger year;
@property (assign, nonatomic)NSInteger grade;
@property (retain, nonatomic)UIScrollView *yearsView;
@property (retain, nonatomic) IBOutlet UIScrollView *fullScrollView;

- (void)addYearsButtons;
- (void)selectButtonAtIndex:(NSUInteger)index;
- (IBAction)questionButton:(UIButton *)sender;

@end
