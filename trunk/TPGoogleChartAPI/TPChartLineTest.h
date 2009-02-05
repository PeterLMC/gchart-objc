//
//  TPChartLineTest.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TPChartLine.h"

/**
 * Test for TPChartLine
 */
@interface TPChartLineTest : SenTestCase {
@private
    TPChartLine *chart;
}
/**
 * test chartURL
 */
- (void)testChartURL;
/**
 * test chartImageData
 */
- (void)testchartImageData;
@end
