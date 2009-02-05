//
//  TPChartBar.h
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
#import "TPChartBasic.h"

typedef enum tagChartTypesBar {
    TPChartTypeBarBHS,
    TPChartTypeBarBVS,
    TPChartTypeBarBHG,
    TPChartTypeBarBVG
} TPChartTypeBar;

/**
 * Bar Chart
 * example: http://chart.apis.google.com/chart?cht=bvs&chs=200x125&chd=t:10,50,60,80,40|50,60,100,40,20&chco=4d89f9,c6d9fd&chbh=20&chds=0,160
 */
@interface TPChartBar : TPChartBasic<TPAxisStyle> {
@private
    TPParameterAxisStyle *axis;
    TPChartTypeBar type;
    int barWidth;
    int spaceBetweenBars;
    int spaceBetweenGroups;
}

/**
 * Type of the chart
 * One of: TPChartTypeBarBHS, TPChartTypeBarBVS, TPChartTypeBarBHG or TPChartTypeBarBVG
 */
@property TPChartTypeBar type;

/**
 * Width of the bars in px
 * 0 = automatic
 */
@property int barWidth;

/**
 * Width of the bars in pixel
 * 0 = otomatic
 */
@property int spaceBetweenBars;

/**
 * Space between the bars
 * 0 = automatic
 */
@property int spaceBetweenGroups;

@end
