//
//  TPParameterSolidFill.m
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
