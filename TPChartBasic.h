//
//  TPChartBasic.h
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

#import <Foundation/Foundation.h>
#import "TPChart.h"

/**
 * The super class for the basic charts: Bar,Pie,Line
 * Has mutliple list of values and each list has a name/title
 */
@interface TPChartBasic : TPChart<TPAddsPartToTheURL> {
@private
    NSMutableArray *rows;
    NSMutableArray *rowTitles;
}

/**
 * Adds a new line of values to the chart
 * @param rowValues array with a list of values
 * @return index of the added row
 */
- (NSInteger)addNewLine:(NSArray *)rowValues;

/**
 * Returns the value array for the given row index
 * @param rowIndex index of the row to return
 * @return the row with index rowIndex
 */
- (NSArray *)valuesForRow:(NSInteger)rowIndex;


/**
 * Adds a new rowtitle to the chart
 * @param title new title to add
 * @return index of the new added title;
 */
- (NSInteger)addNewRowTitle:(NSString *)title;

/**
 * Sets the row title for a specified index
 * @param title title to add
 * @param rowId index where the title should be set
 */
- (void)setRowTitle:(NSString *)title withId:(NSInteger)rowId;

/**
 * set the titles of all rows
 * @param titles NSArray with the titles as NSStrings
 */
- (void)setRowTtiles:(NSArray *)titles;

/**
 * Returns the title of the row with the specified index
 * @param rowId index of the row
 * @return title of the row 
 */
- (NSString *)titleForRow:(NSInteger)rowId;

@end
