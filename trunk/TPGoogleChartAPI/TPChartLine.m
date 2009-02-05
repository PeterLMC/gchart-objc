//
//  TPChartLine.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartLine.h"
#import "TPParameterAxisStyle.h"

@implementation TPChartLine

@synthesize type;

- (NSURLRequest *)imageRequest
{
    return [NSURLRequest requestWithURL:[NSURL URLWithString:[self URL]]];
}

#pragma mark Protocol TPAddsPartToTheURL
- (NSMutableString *)partialURL
{
    NSMutableString *url = [super partialURL];
    NSString *typeString;
    switch (type) {
            //case TPChartTypeLineC: -> default
            
        case TPChartTypeLineS:
            typeString = @"cht=ls";
            break;
        case TPChartTypeLineXY:
            typeString = @"cht=lxy";
            break;
        default:
            typeString = @"cht=lc";
            break;
    }
    [url appendString:@"&"];
    [url appendString:typeString];
    
    if(axis){
        [url appendString:[axis partialURL]];
    }
    return url;    
}

#pragma mark Protocol TPParameterAxisStyle
-(void)setAxisStyle:(TPParameterAxisStyle *)axisStyle {
    axis = axisStyle;
}
@end
