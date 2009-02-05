//
//  TPChartOMeter.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChart.h"

/**
 * Google-o-meter diagram\n
 * example: http://chart.apis.google.com/chart?chs=225x125&cht=gom&chd=t:70&chl=Hello
 */
@interface TPChartOMeter : TPChart<TPAddsPartToTheURL> {
@private
    int value;
    NSString *label;
}

/**
 * The value to display\n
 * range: 0-100
 */
@property int value;

/**
 * A label for the arrow
 */
@property (nonatomic, retain) NSString *label;

@end
