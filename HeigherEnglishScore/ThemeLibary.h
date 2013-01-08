//
//  ThemeLibary.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThemeLibary : NSObject
{
    NSString *_themeId;//试题唯一ID
    NSString *_title;//试题题目
    NSString *_type;//题目来源类型
    NSString *_areaId;//地区
    NSString *_year;//年份
    NSString *_titleType;//题型编号
    NSDate *_createDate;//更新时间
}
@property(assign,nonatomic)NSString *themeId;//试题唯一ID
@property(retain,nonatomic)NSString *title;//试题题目
@property(assign,nonatomic)NSString *type;//题目来源类型
@property(assign,nonatomic)NSString *areaId;//地区
@property(retain,nonatomic)NSString *year;//年份
@property(assign,nonatomic)NSString *titleType;//题型编号
@property(retain,nonatomic)NSDate *createDate;//更新时间
@end
