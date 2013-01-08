//
//  ChooseGradeViewController.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-5.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "ChooseGradeViewController.h"

@interface ChooseGradeViewController ()

@end

@implementation ChooseGradeViewController

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
    _grade=12;
    self.navigationController.navigationBarHidden=YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toNextPage:(id)sender
{
    MainViewController *main=[[MainViewController alloc]init];
    main.grade=_grade;
    [self.navigationController pushViewController:main animated:YES];
    [main release];
}

- (IBAction)gradeSegment:(UISegmentedControl *)sender {
     switch ([sender selectedSegmentIndex])
    {
            case 0:
            _grade=10;
            
            break;
            case 1:
            _grade=11;
            break;
            case 3:
            _grade=12;
            break;
    }
}
- (void)dealloc {
    [super dealloc];
}
@end
