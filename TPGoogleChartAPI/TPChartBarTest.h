//
//  TPChartBarTest.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TPChartBar.h"

/**
 * TPChartBar test
 */
@interface TPChartBarTest : SenTestCase {
@private
    /**
     * chart to test;
     */
    TPChartBar *chart;
}

/**
 * test TPChartBar
 */
-(void)testPartialUrl;
@end
