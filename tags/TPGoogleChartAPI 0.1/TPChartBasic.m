//
//  TPChartBasic.m
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

#import "TPChartBasic.h"


@implementation TPChartBasic

- (id) init
{
    self = [super init];
    if (self != nil) {
        rows = [NSMutableArray array];
        rowTitles = [NSMutableArray array];
    }
    return self;
}


- (NSInteger)addNewLine:(NSArray *)rowValues
{
    [rows addObject:rowValues];
    return [rows count]-1;
}
- (NSArray *)valuesForRow:(NSInteger)rowIndex
{
    return [rows objectAtIndex:rowIndex];
}


- (NSInteger)addNewRowTitle:(NSString *)title
{
    [rowTitles addObject:title];
    return [rowTitles count]-1;
}
- (void)setRowTitle:(NSString *)title withId:(NSInteger)rowId
{
    @try {
        [rowTitles replaceObjectAtIndex:rowId withObject:title];
    }
    @catch (NSException * e) {
        [rowTitles addObject:title];
    }
}
- (void)setRowTtiles:(NSArray *)titles
{
    [rowTitles release];
    rowTitles = [NSMutableArray arrayWithArray:titles];
}
- (NSString *)titleForRow:(NSInteger)rowId
{
    return [rowTitles objectAtIndex:rowId];
}


-(NSMutableString *)partialURL
{
    NSMutableString *url = [super URL];
    if([rows count] > 0){
        //values
        [url appendString:@"&chd=t:"];
        for(NSArray *row in rows){
            for(NSNumber *number in row){
                [url appendString:[NSString stringWithFormat:@"%f",[number doubleValue]]];
                if(![number isEqualToNumber:[row lastObject]]){
                    [url appendString:@","];
                }
            }
            if(![row isEqualToArray:[rows lastObject]]){
                [url appendString:@"|"];
            }
        }
    }
    if([rowTitles count] > 0){
        [url appendString:@"&chl="];
        for(NSString *title in rowTitles){
            [url appendString:title];
            if(![title isEqualToString:[rowTitles lastObject]]){
                [url appendString:@"|"];
            }
        }
    }
    return url;
}
@end
