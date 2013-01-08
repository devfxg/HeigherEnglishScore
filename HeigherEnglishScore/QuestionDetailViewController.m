//
//  QuestionDetailViewController.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "QuestionDetailViewController.h"

@interface QuestionDetailViewController ()

@end

@implementation QuestionDetailViewController
@synthesize detailId=_detailId;


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
//    ThemeDetalXML *xml=[[ThemeDetalXML alloc]init];
//    [xml startParseWithId:_detailId];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_detailId release];
    [super dealloc];
}

@end
