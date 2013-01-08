//
//  ChooseGradeViewController.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-5.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
@interface ChooseGradeViewController : UIViewController
{
    NSInteger _grade;
}
- (IBAction)toNextPage:(id)sender;
- (IBAction)gradeSegment:(UISegmentedControl *)sender;

@end
