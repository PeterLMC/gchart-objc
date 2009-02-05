//
//  TPChartVenn.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartVenn.h"


@implementation TPChartVenn
@synthesize A,B,C,AB,AC,BC,ABC;

- (id) init
{
    self = [super init];
    if (self != nil) {
        A = 0.0;
        B = 0.0;
        C = 0.0;
        AB = 0.0;
        AC = 0.0;
        BC = 0.0;
        ABC = 0.0;
    }
    return self;
}

-(NSMutableString *)partialURL
{
    NSMutableString *url = [super URL];
    [url appendString:@"&cht=v"];
    [url appendString:[NSString stringWithFormat:@"&chd=t:%i,%i,%i,%i,%i,%i,%i",A,B,C,AB,AC,BC,ABC]];
    return url;
}
@end
