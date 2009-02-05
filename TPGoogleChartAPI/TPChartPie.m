//
//  TPChartPie.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartPie.h"


@implementation TPChartPie

@synthesize type,angle;

#pragma mark Protocol TPAddsPartToTheURL
-(NSMutableString *)partialURL
{
    NSMutableString *url = [super partialURL];
    
    NSString *typeString;
    switch (type) {
            //case TPChartTypeLineC: -> default
            
        case TPChartTypePieP:
            typeString = @"cht=p";
            break;
        case TPChartTypePiePC:
            typeString = @"cht=pc";
            break;
        default:
            typeString = @"cht=p3";
            break;
    }
    [url appendString:@"&"];
    [url appendString:typeString];
    
    if(angle != 0){
        [url appendString:[NSString stringWithFormat:@"&chp=%i",angle]];
    }
    return url;
}
@end
