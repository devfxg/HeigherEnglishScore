//
//  QuestionDetailViewController.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThemeDetalXML.h"
#import "ThemeLibary.h"
@interface QuestionDetailViewController : UIViewController
{
    NSString *_detailId;
}

@property(retain,nonatomic)NSString *detailId;
@end
