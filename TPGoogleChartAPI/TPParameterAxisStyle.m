//
//  TPParameterAxisStyle.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
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
