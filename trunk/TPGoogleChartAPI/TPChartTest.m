//
//  TPChartTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartTest.h"


@implementation TPChartTest

- (void) setUp
{
    chart = [[TPChart alloc] init];
}
- (void)testChartURL
{
    
    NSString *url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart URL],url,nil);
}
- (void)testchartImageData
{
    //the single request of Chart is 400 because it's not a valid chart.
    NSURLRequest *request = [chart imageRequest];
    STAssertNil(request,nil);
}

@end
