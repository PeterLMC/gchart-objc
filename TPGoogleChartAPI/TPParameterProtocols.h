//
//  TPParameterProtocols.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TPParameterAxisStyle;

/**
 * Protocol for charts who can have axis
 */
@protocol TPAxisStyle
/**
 * sets the axis style for the receiving chart
 * @param style axis style
 */
- (void)setAxisStyle:(TPParameterAxisStyle *)style;

@end


@class TPParameterChartColor;

/**
 * Protocol for charts who can have colors
 */
@protocol TPChartColor
/**
 * Set color parameters
 * @param colors colors to set
 */
-(void)setChartColors:(TPParameterChartColor *)colors;
@end


@class TPParameterSolidFill;

/**
 * Protocol for charts who can have solid fill parameters
 */
@protocol TPChartSolidFill
/**
 * Set the fill parameter
 * @param fillColors the solid fill parameters
 */
-(void)setFillColors:(TPParameterSolidFill *)fillColors;
@end