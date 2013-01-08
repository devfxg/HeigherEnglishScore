//
//  ThemeLibaryXML.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThemeLibary.h"

@interface ThemeLibaryXML : NSObject<NSXMLParserDelegate>
{
    NSMutableArray *_themList;
    NSMutableString *_string;
    NSMutableDictionary *_dictionary;

}
@property(retain,nonatomic)NSMutableArray *themList;
@property(retain,nonatomic) NSMutableString *string;
@property(retain,nonatomic) NSMutableDictionary *dictionary;

-(NSMutableArray *)startParse;

-(NSMutableArray *)startParseWithGrade:(int)newGrade andYear:(int)newYear andType:(int)newType;
-(void)doParse:(NSString *)str;
@end
