//
//  TPParameterSolidFillTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/5/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPParameterSolidFillTest.h"
#import "TPParameterSolidFill.h"

@implementation TPParameterSolidFillTest


- (void)testSolidFill
{
    TPParameterSolidFill *param = [[TPParameterSolidFill alloc] init];
    STAssertNotNil(param.colorBackground,nil);
    STAssertNil(param.colorChart,nil);
    STAssertNil(param.colorTransparency,nil);
    STAssertEqualObjects([param partialURL],[NSMutableString stringWithString:@"&chf=bg,s,ffffffff"],nil);
    
    param.colorChart = [TPColor colorWithRed:0xFF green:0xFF blue:0];
    STAssertNotNil(param.colorBackground,nil);
    STAssertNotNil(param.colorChart,nil);
    STAssertNil(param.colorTransparency,nil);
    STAssertEqualObjects([param partialURL],[NSMutableString stringWithString:@"&chf=bg,s,ffffffff|c,s,ffff00ff"],nil);
    
    
    param.colorTransparency = [TPColor colorWithRed:0xFF green:0 blue:0];
    STAssertEqualObjects([param partialURL],[NSMutableString stringWithString:@"&chf=a,s,ff0000ff"],nil);
}
@end
