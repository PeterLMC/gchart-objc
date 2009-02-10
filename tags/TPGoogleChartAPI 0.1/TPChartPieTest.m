//
//  TPChartPieTest.m
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
    NSString *url = [NSString stringWithFormat:@"%@chs=%.0fx%.0f&chco=00ff00,ff0000&chd=t:40.000000,60.000000&cht=p3&chp=0.500000",kGoogleChartAPIURL,chart.size.width,chart.size.height];
    STAssertEqualObjects([chart partialURL],url,nil);
}


@end
