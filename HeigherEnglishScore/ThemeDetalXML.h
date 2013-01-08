//
//  ThemeDetalXML.h
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThemeDetail.h"
@interface ThemeDetalXML : NSObject<NSXMLParserDelegate>
{
    NSMutableArray *_themList;
    NSMutableString *_string;
    NSMutableDictionary *_dictionary;
    
}
@property(retain,nonatomic)NSMutableArray *themList;
@property(retain,nonatomic) NSMutableString *string;
@property(retain,nonatomic) NSMutableDictionary *dictionary;

-(void)startParseWithId:(NSString *)detailId;

@end
