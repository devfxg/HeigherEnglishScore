//
//  ThemeLibaryXML.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "ThemeLibaryXML.h"

@implementation ThemeLibaryXML

-(ThemeLibaryXML *)init
{
    if (self=[super init]) {
        _dictionary=[[NSMutableDictionary alloc]init];
        _themList=[[NSMutableArray alloc]init];
        _string=[[NSMutableString alloc]init];
    }
    return self;
}

-(NSMutableArray *)startParse
{
    NSString *str=[NSString stringWithFormat:@"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&currentpagenum=1&pagesize=20&titletype=1&grade=12"];
    NSURL *url=[NSURL URLWithString:str];
    NSData *xmlData=[NSData dataWithContentsOfURL:url];
    NSXMLParser *parser=[[NSXMLParser alloc]initWithData:xmlData];
    parser.delegate=self;
    [parser parse];
    [parser release];
    
    return self.themList;
}

-(NSMutableArray *)startParseWithGrade:(int)newGrade andYear:(int)newYear andType:(int)newType
{
    if (newYear==2013)
    {
        NSString *str=[NSString stringWithFormat:@"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&currentpagenum=1&pagesize=20&titletype=%d&gread=%d",newType,newGrade];
        [self doParse:str];
    }
    else
    {
        NSString *str=[NSString stringWithFormat:@"http://api.winclass.net/serviceaction.do?method=themelibrary&subjectid=3&currentpagenum=1&pagesize=20&titletype=%d&gread=%d&year=%d",newType,newGrade,newYear];
        [self doParse:str];
    }
     return self.themList;
}

-(void)doParse:(NSString *)str
{
    NSURL *url=[NSURL URLWithString:str];
    NSData *xmlData=[NSData dataWithContentsOfURL:url];
    NSXMLParser *parser=[[NSXMLParser alloc]initWithData:xmlData];
    parser.delegate=self;
    [parser parse];
    [parser release];
}
#pragma mark - NSXMLParser的代理方法

-(void)parserDidStartDocument:(NSXMLParser *)parser
{
}
#pragma mark -在XML document中,当解析器在解析的时候遇到了一个新的element时会被调用该方法。
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"item"])
    {
        [self.dictionary removeAllObjects];
    }
    else if ([elementName isEqualToString:@"id"])
    {
        [_string setString:@""];
    }

    else if ([elementName isEqualToString:@"title"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"type"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"areaid"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"year"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"titletype"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"createdate"])
    {
        [_string setString:@""];
    }
}
#pragma mark -当解析器在解析文档内容的时候被调用。
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [_string appendString:string];
}
#pragma mark -当前节点结束之后会调用。
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"item"]) {
        [self.themList addObject:[NSMutableDictionary dictionaryWithDictionary:_dictionary]];
    }
    else if ([elementName isEqualToString:@"id"]) {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }

    else if ([elementName isEqualToString:@"title"]) {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"type"]) {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"areaid"]) {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"year"]) {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
        
    }
    else if ([elementName isEqualToString:@"titletype"]) {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }

    else if ([elementName isEqualToString:@"createdate"]) {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }

}
#pragma mark -解析结束的时候调用该方法
-(void)parserDidEndDocument:(NSXMLParser *)parser
{
    NSMutableArray *tempArray=[[NSMutableArray alloc]init];
    for (id elment in self.themList) {
        ThemeLibary *tempLibary=[[ThemeLibary alloc]init];
        tempLibary.themeId=[elment objectForKey:@"id"];
        tempLibary.title=[elment objectForKey:@"title"];
        tempLibary.type=[elment objectForKey:@"type"];
        tempLibary.areaId=[elment objectForKey:@"areaid"];
        tempLibary.year=[elment objectForKey:@"year"];
        tempLibary.titleType=[elment objectForKey:@"titletype"];
        tempLibary.createDate=[elment objectForKey:@"createdate"];
        
        [tempArray addObject:tempLibary];
//        NSLog(@"%@",tempLibary.themeId);
        
        [tempLibary release];
    }
    [self.themList removeAllObjects];//清空原有数据
    self.themList=tempArray;//将临时数组中的数据赋值给当前数组
    [tempArray release];
}

- (void)dealloc
{
    [_themList release];
    [_string release];
    [_dictionary release];
    [super dealloc];
}

@end
