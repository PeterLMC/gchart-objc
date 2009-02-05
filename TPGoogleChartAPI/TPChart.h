//
//  TPChart.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/2/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPParameterProtocols.h"

#define kGoogleChartAPIURL @"http://chart.apis.google.com/chart?"

/**
 * The base class of all charts
 * manages the charts data and their titles
 */
@interface TPChart : NSObject<TPChartSolidFill,TPChartColor> {
@private
    NSSize size;
    TPParameterSolidFill *fillColors;
    TPParameterChartColor *colors;
}
/**
 * Size of the chart
 */
@property NSSize size;

/**
 * URL to generate the chart
 * @return the url who generates the chart
 */
- (NSMutableString *)URL;

/**
 * Returns a request for the generated Image
 * @return request for a png image
 */
- (NSURLRequest *)imageRequest;

@end





/*
 * Protocols for spezial Parameters
 *
 */


/**
 * Protocol for Classes that have a method that returns a part of a URL
 *
 */
 @protocol TPAddsPartToTheURL
/**
 * Returns part of the URL
 */
-(NSMutableString *)partialURL;

@end

