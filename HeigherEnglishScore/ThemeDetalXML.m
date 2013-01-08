//
//  ThemeDetalXML.m
//  HeigherEnglishScore
//
//  Created by Ibokan on 13-1-7.
//  Copyright (c) 2013年 IOS44. All rights reserved.
//

#import "ThemeDetalXML.h"

@implementation ThemeDetalXML


-(ThemeDetalXML *)init
{
    if (self=[super init]) {
        _dictionary=[[NSMutableDictionary alloc]init];
        _themList=[[NSMutableArray alloc]init];
        _string=[[NSMutableString alloc]init];
    }
    return self;
}


-(void)startParseWithId:(NSString *)detailId
{
     NSString *str=[NSString stringWithFormat:@"http://api.winclass.net/serviceaction.do?method=gettheme&subjectid=3&id=%@",detailId];
    
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
    else if ([elementName isEqualToString:@"title"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"select1"])
    {
        [_string setString:@""];
    }    
    else if ([elementName isEqualToString:@"select2"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"select3"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"select4"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"select5"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"result"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"hint1"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"hint2"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"hint3"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"hint4"])
    {
        [_string setString:@""];
    }
    else if ([elementName isEqualToString:@"hint5"])
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
    else if ([elementName isEqualToString:@"title"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"select1"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }    
    else if ([elementName isEqualToString:@"select2"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"select3"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"select4"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"select5"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"result"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"hint1"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"hint2"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"hint3"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"hint4"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
    else if ([elementName isEqualToString:@"hint5"])
    {
        [_dictionary setObject:[NSString stringWithString:_string] forKey:elementName];
    }
}
#pragma mark -解析结束的时候调用该方法
-(void)parserDidEndDocument:(NSXMLParser *)parser
{
    NSMutableArray *tempArray=[[NSMutableArray alloc]init];
    for (id elment in self.themList) {
        ThemeDetail *tempDetail=[[ThemeDetail alloc]init];
        tempDetail.title=[elment objectForKey:@"title"];
        
//        tempDetail.select1=[elment objectForKey:@"select1"];
//        tempDetail.select2=[elment objectForKey:@"select2"];
//        tempDetail.select3=[elment objectForKey:@"select3"];
//        tempDetail.select4=[elment objectForKey:@"select4"];
//        tempDetail.select5=[elment objectForKey:@"select5"];
        
        tempDetail.selectArray=[NSMutableArray arrayWithObjects:[elment objectForKey:@"select1"],[elment objectForKey:@"select2"],[elment objectForKey:@"select3"],[elment objectForKey:@"select4"],[elment objectForKey:@"select5"], nil];
        
//        tempDetail.hint1=[elment objectForKey:@"hint1"];
//        tempDetail.hint2=[elment objectForKey:@"hint2"];
//        tempDetail.hint3=[elment objectForKey:@"hint3"];
//        tempDetail.hint4=[elment objectForKey:@"hint4"];
//        tempDetail.hint5=[elment objectForKey:@"hint5"];
        tempDetail.hintArray=[NSMutableArray arrayWithObjects:[elment objectForKey:@"hint1"],[elment objectForKey:@"hint2"],[elment objectForKey:@"hint3"],[elment objectForKey:@"hint4"],[elment objectForKey:@"hint5"], nil];
        
        [tempArray addObject:tempDetail];
        NSLog(@"%@",tempDetail.title);
        NSLog(@"%@",tempDetail.selectArray);
        [tempDetail release];
    }
    [self.themList removeAllObjects];//清空原有数据
    self.themList=tempArray;//将临时数组中的数据赋值给当前数组
    
    [tempArray release];
}


- (void)dealloc
{
    [_themList release];
    [_dictionary release];
    [_string release];
    [super dealloc];
}
@end
