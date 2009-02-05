//
//  TPParameterSolidFill.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPParameterSolidFill.h"


@implementation TPParameterSolidFill

@synthesize colorBackground,colorChart,colorTransparency;

- (id) init
{
    self = [super init];
    if (self != nil) {
        colorBackground = [[TPColor colorWithRed:0xFF green:0xFF blue:0xFF] retain];
    }
    return self;
}


- (NSMutableString *)partialURL
{
    NSMutableString *url = [NSMutableString string];
    
    if(colorTransparency != nil){
        [url appendString:[NSString stringWithFormat:@"&chf=a,s,%02x%02x%02x%02x",colorTransparency.red,colorTransparency.green,colorTransparency.blue,colorTransparency.alpha]];
    } else if(colorBackground != nil){
        [url appendString:[NSString stringWithFormat:@"&chf=bg,s,%02x%02x%02x%02x",colorBackground.red,colorBackground.green,colorBackground.blue,colorBackground.alpha]];
        if(colorChart != nil){
            [url appendString:[NSString stringWithFormat:@"|c,s,%02x%02x%02x%02x",colorChart.red,colorChart.green,colorChart.blue,colorChart.alpha]];
        }
    }
    return url;
}
@end
