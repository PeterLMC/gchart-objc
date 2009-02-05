//
//  TPChartOMeter.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPChartOMeter.h"


@implementation TPChartOMeter

@synthesize value,label;

- (id) init
{
    self = [super init];
    if (self != nil) {
        value = 0;
        label = nil;
    }
    return self;
}

- (NSMutableString *)partialURL
{
    NSMutableString *url = [super URL];
    [url appendString:@"&cht=gom"];
    [url appendString:[NSString stringWithFormat:@"&chd=t:%i",value]];
    if(label != nil){
        [url appendString:[NSString stringWithFormat:@"&chl=%@",label]];
    }
    return url;
}
@end
