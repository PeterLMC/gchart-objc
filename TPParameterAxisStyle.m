//
//  TPParameterAxisStyle.m
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

#import "TPParameterAxisStyle.h"


@implementation TPParameterAxisStyle

@synthesize bottomXAxis, topXAxis, leftYAxis, rightYAxis;



+ (id)parameterAxisStyleWithBottomX:(BOOL)bx topX:(BOOL)tx leftY:(BOOL)ly rightY:(BOOL)ry
{
    TPParameterAxisStyle *style = [[[TPParameterAxisStyle alloc] init] autorelease];
    style.bottomXAxis = bx;
    style.topXAxis = tx;
    style.leftYAxis = ly;
    style.rightYAxis = ry;
    return style;
}
- (id) init
{
    self = [super init];
    if (self != nil) {
        bottomXAxis = NO;
        topXAxis = NO;
        leftYAxis = NO;
        rightYAxis = NO;
    }
    return self;
}

#pragma mark Protocol TPAddsPartToTheURL
- (NSMutableString *)partialURL
{
    if(bottomXAxis || topXAxis || leftYAxis || rightYAxis){
        NSMutableString *urlpart = [NSMutableString string];
        [urlpart appendString:@"&chxt="];
        if(bottomXAxis){
            [urlpart appendString:@"x,"];
        }
        if(topXAxis){
            [urlpart appendString:@"t,"];
        }
        if(leftYAxis){
            [urlpart appendString:@"y,"];
        }
        if(rightYAxis){
            [urlpart appendString:@"r,"];
        }
        NSRange range;
        range.length = 1;
        range.location = [urlpart length]-1;
        [urlpart deleteCharactersInRange:range];
        return urlpart;
    } else {
        return nil;
    }
}
@end
