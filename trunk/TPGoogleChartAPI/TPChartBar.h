//
//  TPChartBar.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/4/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChartBasic.h"

typedef enum tagChartTypesBar {
    TPChartTypeBarBHS,
    TPChartTypeBarBVS,
    TPChartTypeBarBHG,
    TPChartTypeBarBVG
} TPChartTypeBar;

/**
 * Bar Chart
 * example: http://chart.apis.google.com/chart?cht=bvs&chs=200x125&chd=t:10,50,60,80,40|50,60,100,40,20&chco=4d89f9,c6d9fd&chbh=20&chds=0,160
 */
@interface TPChartBar : TPChartBasic<TPAxisStyle> {
@private
    TPParameterAxisStyle *axis;
    TPChartTypeBar type;
    int barWidth;
    int spaceBetweenBars;
    int spaceBetweenGroups;
}

/**
 * Type of the chart
 * One of: TPChartTypeBarBHS, TPChartTypeBarBVS, TPChartTypeBarBHG or TPChartTypeBarBVG
 */
@property TPChartTypeBar type;

/**
 * Width of the bars in px
 * 0 = automatic
 */
@property int barWidth;

/**
 * Width of the bars in pixel
 * 0 = otomatic
 */
@property int spaceBetweenBars;

/**
 * Space between the bars
 * 0 = automatic
 */
@property int spaceBetweenGroups;

@end
