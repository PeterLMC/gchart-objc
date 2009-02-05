//
//  TPChartTest.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TPChart.h"

/**
 * Test for TPChart
 */
@interface TPChartTest : SenTestCase {
    /**
     * chart
     */
    TPChart *chart;
}
/**
 * test of chartURL
 */
- (void)testChartURL;

/**
 * test ot chartImageData
 */
- (void)testchartImageData;
@end
