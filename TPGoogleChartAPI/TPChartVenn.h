//
//  TPChartVenn.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChart.h"

/**
 * Venn Diagram
 * example: http://chart.apis.google.com/chart?cht=v&chs=200x100&chd=t:100,80,60,30,25,20,10
 */
@interface TPChartVenn : TPChart<TPAddsPartToTheURL> {
@private
    double A;
    double B;
    double C;
    double AB;
    double AC;
    double BC;
    double ABC;
}

/**
 * Size of circle A
 */
@property double A;

/**
 * Size of circle B
 */
@property double B;

/**
 * Size of circle C
 */
@property double C;

/**
 * Area of A intersecting B.
 */
@property double AB;

/**
 * Area of A intersecting C.
 */
@property double AC;

/**
 * Area of B intersecting C.
 */
@property double BC;

/**
 * Area of A intersecting B intersecting C.
 */
@property double ABC;



@end
