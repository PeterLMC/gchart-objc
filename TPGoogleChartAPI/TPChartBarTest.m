//
//  TPChartBarTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartBarTest.h"
#import "TPParameterChartColor.h"

@implementation TPChartBarTest

- (void) setUp
{
    chart = [[TPChartBar alloc] init];
}

-(void)testPartialUrl
{
    [chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithFloat:40],[NSNumber numberWithFloat:60],nil]];
    //[chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithFloat:100],[NSNumber numberWithFloat:40],[NSNumber numberWithFloat:10],nil]];
    [chart addNewRowTitle:@"Year 2007"];
    [chart addNewRowTitle:@"Year 2008"];
    [chart addNewRowTitle:@"Year 2009"];
    chart.type = TPChartTypeBarBHG;
    chart.barWidth = 0;
    NSString *url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chd=t:40.000000,60.000000&chl=Year 2007|Year 2008|Year 2009&cht=bhg&chbh=a",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
}
@end
