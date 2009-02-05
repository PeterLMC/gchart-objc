//
//  TPChart.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChart.h"

@implementation TPChart

@synthesize size;

- (id) init
{
    self = [super init];
    if (self != nil) {
        size.width = 250;
        size.height = 100;
    }
    return self;
}

- (NSURLRequest *)imageRequest
{
    //NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:[self URL]]];
    return nil;
}


- (NSMutableString *)URL
{
    NSMutableString *url = [NSMutableString string];
    [url appendString:kGoogleChartAPIURL];
    [url appendString:[NSString stringWithFormat:@"chs=%.0fx%.0f",size.width,size.height]];
    if(colors){
        [url appendString:[colors partialURL]];
    }
    if(fillColors){
        [url appendString:[fillColors partialURL]];
    }
    
    return url;
}

#pragma mark Protocol TPChartColor
- (void)setChartColors:(TPParameterChartColor *)chartColors
{
    colors = chartColors;
}

#pragma mark Protocol TPChartSolidFill

-(void)setFillColors:(TPParameterSolidFill *)newFillColor
{
    fillColors = newFillColor;
}
@end
