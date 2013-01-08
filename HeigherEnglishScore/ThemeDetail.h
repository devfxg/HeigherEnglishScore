//
//  ThemeDetail.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThemeDetail : NSObject
{
    NSString *_examId;
    NSString *_title;
    NSString *_type;
    NSString *_gread;
    NSString *_areaid;
    NSString *_year;
    NSString *_titleType;
    NSString *_difficulty;
    NSMutableDictionary *select;
    NSString *_result;
    NSMutableArray *_hint;
    
    
}
@property(retain,nonatomic)NSString *title;
@property(retain,nonatomic)NSString *select1;
@property(retain,nonatomic)NSString *select2;
@property(retain,nonatomic)NSString *select3;
@property(retain,nonatomic)NSString *select4;
@property(retain,nonatomic)NSString *select5;
@property(retain,nonatomic)NSString *result;
@property(retain,nonatomic)NSString *hint1;
@property(retain,nonatomic)NSString *hint2;
@property(retain,nonatomic)NSString *hint3;
@property(retain,nonatomic)NSString *hint4;
@property(retain,nonatomic)NSString *hint5;
@property(retain,nonatomic)NSMutableArray *selectArray;
@property(retain,nonatomic)NSMutableArray *hintArray;

@end
