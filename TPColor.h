//
//  TPColor.h
//  TPGoogleChartAPI
//
//  Copyright (c) 2009 Thomas Post. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//  1. Redistributions of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//  2. Redistributions in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//  3. The name of the author may not be used to endorse or promote products
//     derived from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
//  ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, 
//  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED 
//  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
//  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
//  OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
//  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#import <Foundation/Foundation.h>

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
