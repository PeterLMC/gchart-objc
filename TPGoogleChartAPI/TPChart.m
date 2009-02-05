//
//  TPChart.m
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
    if(scaling){
        [url appendString:[scaling partialURL]];
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

#pragma mark Protocol TPChartDataScaling
-(void)setScalingData:(TPParameterDataScaling *)scalingDta
{
    scaling = scalingDta;
}
@end