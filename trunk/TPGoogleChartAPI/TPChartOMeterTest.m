//
//  TPCartOMeterTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartOMeterTest.h"


@implementation TPChartOMeterTest

- (void)testOMeter 
{
    TPChartOMeter *ometer = [[TPChartOMeter alloc] init];
    ometer.value = 50;
    ometer.label = @"Hello";
    STAssertEqualObjects([ometer partialURL],@"http://chart.apis.google.com/chart?chs=250x100&cht=gom&chd=t:50&chl=Hello",nil);
}

@end
