//
//  TPChartPieTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartPieTest.h"
#import "TPParameterChartColor.h"
#import "TPColor.h"

@implementation TPChartPieTest

- (void) setUp
{
    chart = [[TPChartPie alloc] init];
}
- (void)testChartURL
{
    [chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithFloat:40],[NSNumber numberWithFloat:60],nil]];
    //[chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithFloat:100],[NSNumber numberWithFloat:40],[NSNumber numberWithFloat:10],nil]];
    
    TPParameterChartColor *color = [[TPParameterChartColor alloc] init];
    [color setColors:[NSArray arrayWithObjects:[TPColor colorWithRed:0 green:255 blue:0],[TPColor colorWithRed:255 green:0 blue:0],nil]];
    [chart setChartColors:color];
    
    chart.type = TPChartTypePieP3;
    chart.angle = 0.5; //wrong implemented!!!
    NSString *url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chco=00ff00,ff0000&chd=t:40.000000,60.000000&cht=p3&chp=0",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
}


@end
