//
//  TPParameterDataScaling.m
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

#import "TPParameterDataScaling.h"

@implementation TPParameterDataScaling

- (id) init
{
    self = [super init];
    if (self != nil) {
        scalingData = [NSMutableArray arrayWithCapacity:128];
    }
    return self;
}

- (NSMutableString *)partialURL
{
    NSMutableString *url = [NSMutableString string];
    if([scalingData count] > 0){
        [url appendString:@"&chds="];
        for(NSArray *values in scalingData){
            [url appendString:[NSString stringWithFormat:@"%f,%f",[[values objectAtIndex:0] doubleValue],[[values objectAtIndex:1] doubleValue],nil]];
            if(![values isEqualToArray:[scalingData lastObject]]){
                [url appendString:@","];
            }
        }
    }
    return url;
}

- (void)setValueForDataSet:(NSInteger)index 
                  minValue:(NSNumber *)min 
                  maxValue:(NSNumber *)max
{
    NSArray *newValues = [NSArray arrayWithObjects:min,max,nil];
    @try {
        [scalingData replaceObjectAtIndex:index withObject:newValues];
    }
    @catch ( NSException * e) {
        [scalingData addObject:newValues];
    }
}

-(NSNumber *)minValueForDataSet:(NSInteger)index
{
    return [[scalingData objectAtIndex:index] objectAtIndex:0];
}


-(NSNumber *)maxValueForDataSet:(NSInteger)index
{
    return [[scalingData objectAtIndex:index] objectAtIndex:1];
}
@end
