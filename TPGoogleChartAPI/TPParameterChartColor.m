//
//  TPParameterChartColor.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPParameterChartColor.h"
#import "TPColor.h"

@implementation TPParameterChartColor


-(void)setColors:(NSArray *)chartColors
{
    colors = chartColors;
}

#pragma mark Protocol TPAddsPartToTheURL
-(NSMutableString *)partialURL
{
    NSMutableString *url = [NSMutableString string];
    [url appendString:@"&chco="];
    for(TPColor *color in colors){
        [url appendString:[NSString stringWithFormat:@"%02x%02x%02x",color.red,color.green,color.blue]];
        if(![color isEqualToColor:[colors lastObject]]){
            [url appendString:@","];
        }
    }
    return url;
}
@end
