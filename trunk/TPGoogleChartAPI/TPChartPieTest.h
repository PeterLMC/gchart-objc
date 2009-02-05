//
//  TPChartPieTest.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TPChartPie.h"

/**
 * Test for TPChartPie
 */
@interface TPChartPieTest : SenTestCase {
    /**
     * chart to test
     */
    TPChartPie *chart;
}
/**
 * test the chart
 */
- (void)testChartURL;
@end
