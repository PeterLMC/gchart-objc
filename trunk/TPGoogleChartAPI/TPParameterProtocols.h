//
//  TPParameterProtocols.h
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