//
//  TPChartVenn.h
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
 * Venn Diagram
 * example: http://chart.apis.google.com/chart?cht=v&chs=200x100&chd=t:100,80,60,30,25,20,10
 */
@interface TPChartVenn : TPChart<TPAddsPartToTheURL> {
@private
    double A;
    double B;
    double C;
    double AB;
    double AC;
    double BC;
    double ABC;
}

/**
 * Size of circle A
 */
@property double A;

/**
 * Size of circle B
 */
@property double B;

/**
 * Size of circle C
 */
@property double C;

/**
 * Area of A intersecting B.
 */
@property double AB;

/**
 * Area of A intersecting C.
 */
@property double AC;

/**
 * Area of B intersecting C.
 */
@property double BC;

/**
 * Area of A intersecting B intersecting C.
 */
@property double ABC;



@end
