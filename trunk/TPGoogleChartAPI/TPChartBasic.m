//
//  TPChartBasic.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
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
    [rowTitles replaceObjectAtIndex:rowId withObject:title];
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
