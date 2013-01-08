//
//  QuestionListViewController.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-6.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThemeLibaryXML.h"
#import "QuestionDetailViewController.h"
@interface QuestionListViewController : UITableViewController
{
    NSMutableArray *_dataList;
    NSInteger _year;
    NSInteger _type;
    NSInteger _grade;
}
@property(retain,nonatomic)NSMutableArray *dataList;
@property(assign,nonatomic)NSInteger year;
@property(assign,nonatomic)NSInteger type;
@property(assign,nonatomic)NSInteger grade;
@end
