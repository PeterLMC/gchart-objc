//
//  TPColorTest.m
//  TPGoogleChartAPI
//
//  Created by Thomas Post on 2/3/09.
//  Copyright 2009 V1ru8. All rights reserved.
//

#import "TPColorTest.h"
#import "TPColor.h"


@implementation TPColorTest

-(void)testColor
{
    TPColor *c = [[TPColor alloc] init];
    //initialized with 0?
    STAssertEquals(c.red,(unsigned char)0,nil);    
    STAssertEquals(c.green,(unsigned char)0,nil);
    STAssertEquals(c.blue,(unsigned char)0,nil);

    c.red = 200;
    c.green = 100;
    c.blue = 50;
    
    STAssertEquals(c.red,(unsigned char)200,nil);    
    STAssertEquals(c.green,(unsigned char)100,nil);
    STAssertEquals(c.blue,(unsigned char)50,nil);
    
}


-(void)testColorConstructor
{
    TPColor *c = [TPColor colorWithRed:200 green:100 blue:50];
    STAssertEquals(c.red,(unsigned char)200,nil);    
    STAssertEquals(c.green,(unsigned char)100,nil);
    STAssertEquals(c.blue,(unsigned char)50,nil);
}
@end