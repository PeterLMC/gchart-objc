//
//  TPChartBasic.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
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
