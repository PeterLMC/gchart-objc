//
//  TPParameterAxisStyle.h
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
