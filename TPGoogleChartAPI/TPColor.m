//
//  TPColor.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPColor.h"


@implementation TPColor

@synthesize red,green,blue,alpha;


+(id)colorWithRed:(unsigned char)r green:(unsigned char)g blue:(unsigned char)b
{
    TPColor *newColor = [[[TPColor alloc] init] autorelease];
    newColor.red = r;
    newColor.green = g;
    newColor.blue = b;
    return newColor;
}

- (id) init
{
    self = [super init];
    if (self != nil) {
        red = 0;
        green = 0;
        blue = 0;
        alpha = 0xFF;
    }
    return self;
}


-(BOOL)isEqualToColor:(TPColor *)color
{
    if(red == color.red && green == color.green && blue == color.blue && alpha == color.alpha){
        return YES;
    } else {
        return NO;
    }
}
@end
