//
//  TPParameterAxisStyle.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChart.h"

/**
 * This class is responsible for controlling which axes need to be drawn
 * you have four axis you can draw:
 *   bottom X-axis
 *   top X-axis
 *   left Y-axis
 *   right Y-axis
 */
@interface TPParameterAxisStyle : NSObject<TPAddsPartToTheURL> {
@private
    BOOL bottomXAxis;
    BOOL topXAxis;
    BOOL leftYAxis;
    BOOL rightYAxis;
}

/**
 * bottom X-axis
 * YES: draw
 * NO: don't draw
 */
@property BOOL bottomXAxis;

/**
 * top X-axis
 * YES: draw
 * NO: don't draw
 */
@property BOOL topXAxis;

/**
 * left Y-axis
 * YES: draw
 * NO: don't draw
 */
@property BOOL leftYAxis;

/**
 * right Y-axis
 * YES: draw
 * NO: don't draw
 */
@property BOOL rightYAxis;

/**
 * Creates and returns a new TPParameterAxisStyle with the given values
 * @param bx bottom X-axis
 * @param tx top X-axis
 * @param ly left Y-axis
 * @param ry right Y-axis
 * @return a new initialized TPParameterAxisStyle object
 */
+ (id)parameterAxisStyleWithBottomX:(BOOL)bx topX:(BOOL)tx leftY:(BOOL)ly rightY:(BOOL)ry;
@end
