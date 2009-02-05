//
//  TPChartBar.m
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
