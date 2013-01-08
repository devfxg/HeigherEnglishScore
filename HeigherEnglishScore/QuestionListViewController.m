//
//  QuestionListViewController.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-8.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "QuestionListViewController.h"

@interface QuestionListViewController ()

@end

@implementation QuestionListViewController
@synthesize dataList=_dataList;
@synthesize grade=_grade;
@synthesize year=_year;
@synthesize type=_type;
@synthesize dictionary=_dictionary;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ThemeLibaryXML *xml=[[ThemeLibaryXML alloc]init];
    self.dataList=[xml startParseWithGrade:_grade andYear:_year andType:_type];
    self.dictionary=[[NSMutableDictionary alloc]init];
    [xml release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [_dataList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    ThemeLibary *libary=[_dataList objectAtIndex:indexPath.row];
    cell.textLabel.text=libary.title;
    cell.detailTextLabel.text=[NSString stringWithFormat:@"%@",libary.createDate];
    cell.imageView.image=[UIImage imageNamed:@"bg_point.png"];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    [_dictionary setValue:libary.themeId forKey:[NSString stringWithFormat:@"%d",indexPath.row]];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
     QuestionDetailViewController *detailViewController = [[QuestionDetailViewController alloc] init];
    NSString *tem=[_dictionary valueForKey:[NSString stringWithFormat:@"%d",indexPath.row]];
    detailViewController.detailId=tem;
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
    
}

@end
