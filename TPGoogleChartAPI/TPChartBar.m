//
//  TPChartBar.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartBar.h"


@implementation TPChartBar

@synthesize type, barWidth, spaceBetweenBars, spaceBetweenGroups;

#pragma mark Protocol TPParameterAxisStyle
-(void)setAxisStyle:(TPParameterAxisStyle *)axisStyle {
    axis = axisStyle;
}

#pragma mark Protocol TPAddsPartToTheURL
-(NSMutableString *)partialURL
{
    NSMutableString *url = [super partialURL];
    NSString *typeString;
    switch (type) {
            //case TPChartTypeLineC: -> default
            
        case TPChartTypeBarBHS:
            typeString = @"cht=bhs";
            break;
        case TPChartTypeBarBHG:
            typeString = @"cht=bhg";
            break;
        case TPChartTypeBarBVG:
            typeString = @"cht=bvg";
        default:
            typeString = @"cht=bvs";
            break;
    }
    [url appendString:@"&"];
    [url appendString:typeString];
    
    if(axis){
        [url appendString:[axis partialURL]];
    }
    if(barWidth != 0){
        [url appendString:[NSString stringWithFormat:@"&chbh=%i",barWidth]];
    } else {
        [url appendString:@"&chbh=a"];
    }
    if(spaceBetweenBars != 0){
        [url appendString:[NSString stringWithFormat:@",%i",spaceBetweenBars]];
        if(spaceBetweenGroups != 0){
            [url appendString:[NSString stringWithFormat:@",%i",spaceBetweenGroups]];
        }
    }
    return url;
    
}
@end
