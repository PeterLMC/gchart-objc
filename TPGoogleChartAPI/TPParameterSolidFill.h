//
//  TPParameterSolidFill.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChart.h"
#import "TPColor.h"

/**
 * This class is responsible for fill parameters
 */
@interface TPParameterSolidFill : NSObject<TPAddsPartToTheURL> {
@private
    TPColor *colorBackground;
    TPColor *colorChart;
    TPColor *colorTransparency;
}

/**
 * Background fill color
 */
@property (nonatomic,retain) TPColor *colorBackground;

/**
 * Chart fill color (optional)
 */
@property (nonatomic,retain) TPColor *colorChart;

/**
 * Whole chart transparency. If set colorChart and colorBackground are ignored
 */
@property (nonatomic,retain) TPColor *colorTransparency;

@end
