//
//  TPChartBarTest.m
//  TPGoogleChartAPI
//
//  Copyright (c) 2009 Thomas Post. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//  1. Redistributions of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//  2. Redistributions in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//  3. The name of the author may not be used to endorse or promote products
//     derived from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
//  ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, 
//  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED 
//  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
//  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
//  OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
//  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
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
