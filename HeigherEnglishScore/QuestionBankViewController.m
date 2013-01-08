//
//  QuestionBankViewController.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-5.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "QuestionBankViewController.h"

@interface QuestionBankViewController ()

@end

@implementation QuestionBankViewController

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
    self.navigationItem.title=@"智能题库";
    _yearsView=[[UIScrollView alloc] initWithFrame:CGRectMake(20.0, 0, 280, 40)];
    _yearsView.pagingEnabled = YES;
    _yearsView.backgroundColor = [UIColor blueColor];
    _yearsView.showsVerticalScrollIndicator = NO;
    _yearsView.showsHorizontalScrollIndicator = NO;
    _yearsView.delegate = self;
    CGSize newSize = CGSizeMake(1000, 40);
    [_yearsView setContentSize:newSize];
    _yearsView.backgroundColor=[UIColor clearColor];
    
    [self addYearsButtons];
    [self.view addSubview:_yearsView];
    
    NSLog(@"年纪%d",_grade);
    
}

-(void)addYearsButtons
{
    UIButton *btn;
	for (int i = 14; i >0; i--) {
		btn = [UIButton buttonWithType:UIButtonTypeCustom];
		btn.frame = CGRectMake(80 * (14-i), 0, 80, 40);
        btn.backgroundColor=[UIColor whiteColor];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        if (i==14) {
            [btn setTitle:[NSString stringWithFormat:@"全部"] forState:UIControlStateNormal];
        }else
        {
            [btn setTitle:[NSString stringWithFormat:@"%d", i + 1999] forState:UIControlStateNormal];
        }
		[btn addTarget:self action:@selector(buttonSelected:) forControlEvents:UIControlEventTouchUpInside];
		btn.tag = i+1999;
		[_yearsView addSubview:btn];
	}
	
	// Select the first button
	[self selectButtonAtIndex:0];
    
}

-(void)selectButtonAtIndex:(NSUInteger)index
{
    UIButton *selectedBtn = [[self.yearsView subviews] objectAtIndex:index];
	[selectedBtn setBackgroundColor:[UIColor blueColor]];
	[selectedBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	prevButtonIndex=index;
    self.year=selectedBtn.tag;
}

- (IBAction)questionButton:(UIButton *)sender
{
    QuestionListViewController *list=[[QuestionListViewController alloc]init];
    list.grade=self.grade;
    list.year=self.year;
    list.type=sender.tag;
    [self.navigationController pushViewController:list animated:YES];
    [list release];
}

-(void)buttonSelected:(id)sender
{
    UIButton *selectedBtn = (UIButton *)sender;
	NSUInteger index =2013-selectedBtn.tag;
	
	if (index != prevButtonIndex) {
		[self deselectButtonAtIndex:prevButtonIndex];
		[self selectButtonAtIndex:index];
		[self.yearsView scrollRectToVisible:CGRectMake(80 * (index-1), 0, 280, 40) animated:YES];
	}
}
- (void)deselectButtonAtIndex:(NSUInteger)prevIndex
{
	UIButton *deselectedBtn = [[self.yearsView subviews] objectAtIndex:prevIndex];
	[deselectedBtn setBackgroundColor:[UIColor whiteColor]];
	[deselectedBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_yearsView release];
    [_fullScrollView release];
    [super dealloc];
}
@end
