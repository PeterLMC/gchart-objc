//
//  TPParemeterDataScalingTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPParameterDataScalingTest.h"
#import "TPChartBar.h"
#import "TPParameterAxisStyle.h"

@implementation TPParameterDataScalingTest

- (void)testDataScaling
{
    TPChartBar *chart = [[TPChartBar alloc] init];
    [chart setType:TPChartTypeBarBVG];
    //[chart addNewRowTitle:@"Hello"];
    //[chart addNewRowTitle:@"World"];
    [chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithInt:120],[NSNumber numberWithInt:200],[NSNumber numberWithInt:160],[NSNumber numberWithInt:100],nil]];
    TPParameterDataScaling *scalingData = [[TPParameterDataScaling alloc] init];
    [scalingData setValueForDataSet:0 minValue:[NSNumber numberWithInt:10] maxValue:[NSNumber numberWithInt:500]];
    [scalingData setValueForDataSet:1 minValue:[NSNumber numberWithInt:0] maxValue:[NSNumber numberWithInt:300]];
    TPParameterAxisStyle *axis = [[TPParameterAxisStyle alloc] init];
    axis.bottomXAxis = YES;
    axis.leftYAxis = YES;
    [chart setAxisStyle:axis];
    [chart setScalingData:scalingData];
    STAssertEqualObjects([chart partialURL],@"http://chart.apis.google.com/chart?chs=250x100&chds=10.000000,500.000000,0.000000,300.000000&chd=t:120.000000,200.000000,160.000000,100.000000&cht=bvs&chxt=x,y&chbh=a",nil);
}

@end
