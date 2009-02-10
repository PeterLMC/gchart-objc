//
//  TPChartVennSerialization.m
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

#import "TPChartVennSerialization.h"
#import "TPChartSerialization.h"

@implementation TPChartVenn (Serialization)
+ (id)createChart:(NSDictionary *)data
{
    TPChartVenn *venn = [[TPChartVenn alloc] initWithPlist:data];
    return venn;
}
- (id)initWithPlist:(NSDictionary *)data
{
    self = [super initWithPlist:data];
    if (self != nil) {
        A = [[[data objectForKey:@"TPChartVennValues"] objectAtIndex:0] doubleValue];
        B = [[[data objectForKey:@"TPChartVennValues"] objectAtIndex:1] doubleValue];
        C = [[[data objectForKey:@"TPChartVennValues"] objectAtIndex:2] doubleValue];
        AB = [[[data objectForKey:@"TPChartVennValues"] objectAtIndex:3] doubleValue];
        AC = [[[data objectForKey:@"TPChartVennValues"] objectAtIndex:4] doubleValue];
        BC = [[[data objectForKey:@"TPChartVennValues"] objectAtIndex:5] doubleValue];
        ABC = [[[data objectForKey:@"TPChartVennValues"] objectAtIndex:6] doubleValue];
    }
    return self;
}


- (NSMutableDictionary *)serializableDictionary
{
    NSMutableDictionary *dic = [super serializableDictionary];
    NSArray *values = [NSArray arrayWithObjects:[NSNumber numberWithDouble:A],
                       [NSNumber numberWithDouble:B],
                       [NSNumber numberWithDouble:C],
                       [NSNumber numberWithDouble:AB],
                       [NSNumber numberWithDouble:AC],
                       [NSNumber numberWithDouble:BC],
                       [NSNumber numberWithDouble:ABC],nil];
    [dic setObject:values forKey:@"TPChartVennValues"];
    return dic;

}
@end
