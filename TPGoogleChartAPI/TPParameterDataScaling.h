//
//  TPParameterDataScaling.h
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
 * This class is responsible for data scaling
 */
@interface TPParameterDataScaling : NSObject<TPAddsPartToTheURL> {
@private
    NSMutableArray *scalingData;
}

/**
 * Set a new scaling value for a specified index
 * @param index dataset to scale\n (e.g. line1 = index 0, line2 = index1,...)
 * @param min min value
 * @param max max value
 */
- (void)setValueForDataSet:(NSInteger)index 
                  minValue:(NSNumber *)min 
                  maxValue:(NSNumber *)max;

/**
 * Returns the min value for a given index
 * @param index index of the min value to return
 * @return min value
 */
-(NSNumber *)minValueForDataSet:(NSInteger)index;

/**
 * Returns the max value for a given index
 * @param index index of the max value to return
 * @return max value
 */
-(NSNumber *)maxValueForDataSet:(NSInteger)index;
@end
