//
//  ThemeLibary.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "ThemeLibary.h"

@implementation ThemeLibary
@synthesize themeId=_themeId,title=_title,type=_type,areaId=_areaId,year=_year,titleType=_titleType,createDate=_createDate;

- (void)dealloc
{
    [_themeId release];//试题唯一ID
    [_title release];//试题题目
    [_type release];//题目来源类型
    [_areaId release];//地区
    [_year release];//年份
    [_titleType release];//题型编号
    [_createDate release];
    [super dealloc];
}

@end
