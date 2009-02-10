//
//  TPChartSerialization.m
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

#import "TPChartSerialization.h"
#import "TPParameterChartColorSerialization.h"
#import "TPParameterSolidFillSerialization.h"
#import "TPParameterDataScalingSerialization.h"

@implementation  TPChart (Serialization)

- (NSMutableDictionary *)serializableDictionary
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    if(colors){
        [dic setObject:[colors propertyList] forKey:@"TPChartColors"];
    } 
    if(fillColors){
        [dic setObject:[fillColors propertyList] forKey:@"TPChartFillColors"];
    }
    if(scaling){
        [dic setObject:[scaling propertyList] forKey:@"TPChartScaling"];
    }
    NSArray *sizeSerialization = [NSArray arrayWithObjects:[NSNumber numberWithDouble:size.width],[NSNumber numberWithDouble:size.height],nil];
    [dic setObject:sizeSerialization forKey:@"TPChartSize"];
    return dic;
}

- (id)initWithPlist:(NSDictionary *)data
{
    self = [super init];
    if (self != nil) {
        size.width = [[[data objectForKey:@"TPChartSize"] objectAtIndex:0] doubleValue];
        size.height = [[[data objectForKey:@"TPChartSize"] objectAtIndex:1] doubleValue];
        
        colors = [TPParameterChartColor objectFromPropertyList:[data objectForKey:@"TPChartColors"]];
        fillColors = [TPParameterSolidFill objectFromPropertyList:[data objectForKey:@"TPChartFillColors"]];
        scaling = [TPParameterDataScaling objectFromPropertyList:[data objectForKey:@"TPChartScaling"]];
    }
    return self;
}


@end
