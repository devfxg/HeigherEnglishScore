//
//  ThemeDetail.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "ThemeDetail.h"

@implementation ThemeDetail
@synthesize title,result,select1,select2,select3,select4,select5,hint1,hint2,hint3,hint4,hint5;



- (void)dealloc
{
    self.title=nil;
    self.result=nil;
    self.select1=nil;
    self.select2=nil;
    self.select3=nil;
    self.select4=nil;
    self.select5=nil;
    self.hint1=nil;
    self.hint2=nil;
    self.hint3=nil;
    self.hint4=nil;
    self.hint5=nil;
    [super dealloc];
}

@end
