//
//  TPChartLineTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartLineTest.h"
#import "TPParameterAxisStyle.h"
#import "TPParameterChartColor.h"
#import "TPParameterSolidFill.h"
#import "TPColor.h"

@implementation TPChartLineTest
- (void) setUp
{
    chart = [[TPChartLine alloc] init];
}
- (void)testChartURL
{
    [chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithFloat:2],[NSNumber numberWithFloat:40],[NSNumber numberWithFloat:100],nil]];
    [chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithFloat:100],[NSNumber numberWithFloat:40],[NSNumber numberWithFloat:10],nil]];
    chart.type = TPChartTypeLineC;
    NSString *url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chd=t:2.000000,40.000000,100.000000|100.000000,40.000000,10.000000&cht=lc",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
    
    chart.type = TPChartTypeLineS;
    url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chd=t:2.000000,40.000000,100.000000|100.000000,40.000000,10.000000&cht=ls",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
    
    chart.type = TPChartTypeLineXY;
    url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chd=t:2.000000,40.000000,100.000000|100.000000,40.000000,10.000000&cht=lxy",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
    
    //test AxisStyle
    chart.type = TPChartTypeLineS;
    TPParameterAxisStyle *type = [TPParameterAxisStyle parameterAxisStyleWithBottomX:YES topX:YES leftY:YES rightY:YES];
    [chart setAxisStyle:type];
    url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chd=t:2.000000,40.000000,100.000000|100.000000,40.000000,10.000000&cht=ls&chxt=x,t,y,r",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
    
    TPParameterChartColor *color = [[TPParameterChartColor alloc] init];
    [color setColors:[NSArray arrayWithObjects:[TPColor colorWithRed:0 green:255 blue:0],[TPColor colorWithRed:255 green:0 blue:0],nil]];
    [chart setChartColors:color];
    url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chco=00ff00,ff0000&chd=t:2.000000,40.000000,100.000000|100.000000,40.000000,10.000000&cht=ls&chxt=x,t,y,r",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
    
    //test fillColor
    
    TPParameterSolidFill *param = [[TPParameterSolidFill alloc] init];
    param.colorBackground = [TPColor colorWithRed:0xFF green:0xFF blue:00]; 
    [chart setFillColors:param];
    url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chco=00ff00,ff0000&chf=bg,s,ffff00ff&chd=t:2.000000,40.000000,100.000000|100.000000,40.000000,10.000000&cht=ls&chxt=x,t,y,r",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);

}
- (void)testchartImageData
{
    NSURLRequest *request = [chart imageRequest];
    STAssertNotNil(request,nil);
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self];
    STAssertNotNil(connection,nil);
}
@end