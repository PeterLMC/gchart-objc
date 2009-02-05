//
//  TPChartPie.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChartBasic.h"

typedef enum tagChartTypesPie {
    TPChartTypePieP,
    TPChartTypePieP3,
    TPChartTypePiePC
} TPChartTypePie;

/**
 * Pie Chart
 * example: http://chart.apis.google.com/chart?cht=p3&chd=s:Uf9a&chs=250x100&chl=January|February|March|April
 */
@interface TPChartPie : TPChartBasic {
@private
    TPChartTypePie type;
    float angle;
}
/**
 * Type of the Chart 
 * 2D = P
 * 3D = p3
 * Centric = C
 */
@property TPChartTypePie type;

/**
 * Angle to rotate the chart in radians
 */
@property float angle;

@end
