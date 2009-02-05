//
//  TPParameterChartColor.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPChart.h"

/**
 * This class is responsible for controlling which data has what color 
 */
@interface TPParameterChartColor : NSObject<TPAddsPartToTheURL> {
@private 
    NSArray *colors;
}

/** 
 * set the colors
 * @param colors NSArray with TPColor objects
 */
-(void)setColors:(NSArray *)colors;

@end
