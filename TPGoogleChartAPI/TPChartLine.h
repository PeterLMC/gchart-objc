//
//  TPChartLine.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChartBasic.h"

typedef enum tagChartTypeLine {
    TPChartTypeLineC,
    TPChartTypeLineS,
    TPChartTypeLineXY
} TPChartTypeLine;

/**
 * Line chart
 * example http://chart.apis.google.com/chart?chs=200x125&cht=ls&chco=0077CC&chd=t:27,25,60,31,25,39,25,31,26,28,80,28,27,31,27,29,26,35,70,25
 */
@interface TPChartLine : TPChartBasic<TPAxisStyle> {
@private
    TPParameterAxisStyle *axis;
    TPChartTypeLine type;
}
/**
 * type of the chart
 * one of the following: TPChartTypeLineC, TPChartTypeLineS or TPChartTypeLineXY
 */
@property TPChartTypeLine type;

/**
 * inherited from superclass
 */
- (NSURLRequest *)imageRequest;


@end
