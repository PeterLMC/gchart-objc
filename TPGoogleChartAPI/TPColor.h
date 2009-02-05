//
//  TPColor.h
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 * An TPColor object represents a RGB color
 */
@interface TPColor : NSObject {
@private
    unsigned char red;
    unsigned char green;
    unsigned char blue;
    unsigned char alpha;
}

/**
 * Returns a new color
 * @param r red part
 * @param g green part
 * @param b blue part
 * @return new color with the given values
 */
+(id)colorWithRed:(unsigned char)r green:(unsigned char)g blue:(unsigned char)b;

/**
 * red part of the color 0-0xFF
 */
@property unsigned char red;

/**
 * green part of the color 0-0xFF
 */
@property unsigned char green;

/**
 * blue part of the color 0-0xFF
 */
@property unsigned char blue;

/**
 * alpha value of the color 0-0xFF
 */
@property unsigned char alpha;

/**
 * compares the color to an other color
 * @param color the color to compare with
 * @return YES if color is equal, else NO
 */
-(BOOL)isEqualToColor:(TPColor *)color;
@end
