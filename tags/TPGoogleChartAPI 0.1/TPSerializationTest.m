//
//  TPChartSerializationTest.m
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

#import "TPSerializationTest.h"
#import "TPChartSerialization.h"
#import "TPParameterDataScalingSerialization.h"
#import "TPParameterChartColorSerialization.h"
#import "TPParameterSolidFillSerialization.h"
#import "TPColorSerialization.h"
#import "TPChartBasicSerialization.h"
#import "TPChartPieSerialization.h"
#import "TPChartLineSerialization.h"
#import "TPParameterAxisStyleSerialization.h"
#import "TPChartVennSerialization.h"
#import "TPChartOMeterSerialization.h"

@implementation TPSerializationTest

-(void)testTPChartSerialization
{
    TPChart *chart = [[TPChart alloc] init];
    
    TPParameterDataScaling *scaling = [[TPParameterDataScaling alloc] init];
    [scaling setValueForDataSet:0 minValue:[NSNumber numberWithInt:0] maxValue:[NSNumber numberWithInt:100]];
    [scaling setValueForDataSet:1 minValue:[NSNumber numberWithInt:10] maxValue:[NSNumber numberWithInt:50]];
    [chart setScalingData:scaling];
    
    TPParameterChartColor *color = [[TPParameterChartColor alloc] init];
    [color setColors:[NSArray arrayWithObjects:[TPColor colorWithRed:0 green:0xFF blue:0],[TPColor colorWithRed:0xFF green:0 blue:0],nil]];
    [chart setChartColors:color];
    
    TPParameterSolidFill *fill = [[TPParameterSolidFill alloc] init];
    fill.colorBackground = [TPColor colorWithRed:0xAA green:0xAA blue:0xAA];
    fill.colorChart = [TPColor colorWithRed:0xCC green:0xCC blue:0xCC];
    [chart setFillColors:fill];
    
    chart.size = NSSizeFromString(@"100x100");
    
    id plist =[chart serializableDictionary];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,nil);
    id reference = [NSData dataWithContentsOfFile:@"TPTestChart.plist"];
    STAssertEqualObjects(serializedPlist,reference,nil);
    
    //reimport and compare
    
    TPChart *chartRecreaded = [[TPChart alloc] initWithPlist:plist];
    NSDictionary *plist2 = [chartRecreaded serializableDictionary];
    
    STAssertEqualObjects(plist2,plist,@"blub");
}


-(void)testChartColorSerialization
{
    TPParameterChartColor *color = [[TPParameterChartColor alloc] init];
    [color setColors:[NSArray arrayWithObjects:[TPColor colorWithRed:0 green:0xFF blue:0],[TPColor colorWithRed:0xFF green:0 blue:0],nil]];
    id plist = [color propertyList];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,nil);
    
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestChartColor.plist"];
    STAssertEqualObjects(serializedPlist,reference,nil);
    
    //reimport and compare
    TPParameterChartColor *color2 = [TPParameterChartColor objectFromPropertyList:plist];
    STAssertEqualObjects(plist,[color2 propertyList],nil);
}


-(void)testChartSolidFillSerialization
{
    TPParameterSolidFill *fill = [[TPParameterSolidFill alloc] init];
    fill.colorBackground = [TPColor colorWithRed:0xAA green:0xAA blue:0xAA];
    fill.colorChart = [TPColor colorWithRed:0xCC green:0xCC blue:0xCC];
    
    NSString *errorString;
    id plist = [fill propertyList];
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,nil);
    
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestSolidFill.plist"];
    STAssertEqualObjects(serializedPlist,reference,nil);
    
    //reimport and compare again
    TPParameterSolidFill *fill2 = [TPParameterSolidFill objectFromPropertyList:plist];
    STAssertEqualObjects(plist,[fill2 propertyList],nil);
}

-(void)testTPColorSerialization
{
    TPColor *color = [TPColor colorWithRed:0xFF green:0x00 blue:0xAA];
    color.alpha = 0x44;
    id plist = [color propertyList];
    STAssertEqualObjects(plist,@"255,0,170,68",nil);
    
    //reinport and compaire again
    TPColor *color2 = [TPColor objectFromPropertyList:plist];
    STAssertEqualObjects(plist,[color2 propertyList],nil);
}

-(void)testPrameterScalingSerialization
{
    TPParameterDataScaling *scaling = [[TPParameterDataScaling alloc] init];
    [scaling setValueForDataSet:0 minValue:[NSNumber numberWithInt:0] maxValue:[NSNumber numberWithInt:100]];
    [scaling setValueForDataSet:1 minValue:[NSNumber numberWithInt:10] maxValue:[NSNumber numberWithInt:50]];
    
    id plist = [scaling propertyList];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,nil);
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestScaling.plist"];
    STAssertNotNil(plist,nil);
    STAssertNotNil(reference,nil);
    STAssertEqualObjects(reference,serializedPlist,nil);
    
    //reinport and compaire again
    TPParameterDataScaling *scaling2 = [TPParameterDataScaling objectFromPropertyList:plist];
    STAssertEqualObjects(plist,[scaling2 propertyList],nil);
}


-(void)testTPChartBasicSerialization
{
    TPChartBasic *chart = [[TPChartBasic alloc] init];
    [chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithInt:10],[NSNumber numberWithInt:20],[NSNumber numberWithInt:10],[NSNumber numberWithInt:30],nil]];
    [chart addNewLine:[NSArray arrayWithObjects:[NSNumber numberWithInt:20],[NSNumber numberWithInt:10],[NSNumber numberWithInt:30],[NSNumber numberWithInt:10],nil]];
    [chart setRowTitle:@"Hello" withId:0];
    [chart setRowTitle:@"World" withId:1];
    
    id plist = [chart serializableDictionary];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,@"Error on plist serialization occured");
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestChartBasic.plist"];
    STAssertEqualObjects(reference,serializedPlist,nil);
    
    //reinport and compaire again
    TPChartBasic *chart2 = [[TPChartBasic alloc] initWithPlist:plist];
    STAssertEqualObjects(plist,[chart2 serializableDictionary],nil);
}


-(void)testTPChartPieSerialization
{
    TPChartPie *chart = [[TPChartPie alloc] init];
    chart.type = TPChartTypePiePC;
    chart.angle = 3.14;
    
    id plist = [chart serializableDictionary];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,@"Error on plist serialization occured");
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestChartPie.plist"];
    STAssertEqualObjects(serializedPlist,reference,nil);
    
    //reinport and compaire again
    TPChartPie *chart2 = [TPChartPie createChart:plist];
    STAssertEqualObjects(plist,[chart2 serializableDictionary],nil);
}


-(void)testTPChartLineSerialization
{
    TPChartLine *chart = [[TPChartLine alloc] init];
    chart.type = TPChartTypeLineS;
    TPParameterAxisStyle *axis = [[TPParameterAxisStyle alloc] init];
    axis.bottomXAxis = YES;
    axis.rightYAxis = YES;
    axis.topXAxis = NO;
    [chart setAxisStyle:axis];
    
    id plist = [chart serializableDictionary];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,@"Error on plist serialization occured");
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestChartLine.plist"];
    STAssertNotNil(reference,nil);
    STAssertEqualObjects(serializedPlist,reference,nil);
    
    //reinport and compaire again
    TPChartLine *chart2 = [TPChartLine createChart:plist];
    STAssertEqualObjects(plist,[chart2 serializableDictionary],nil);
}

-(void)testTPChartVennSerialization
{
    TPChartVenn *chart = [[TPChartVenn alloc] init];
    chart.A = 10;
    chart.B = 10;
    chart.C = 10;
    chart.AB = 2.5;
    chart.AC = 1.5;
    
    id plist = [chart serializableDictionary];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,@"Error on plist serialization occured");
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestChartVenn.plist"];
    STAssertNotNil(reference,nil);
    STAssertEqualObjects(serializedPlist,reference,nil);
    
    //reinport and compaire again
    TPChartVenn *chart2 = [TPChartVenn createChart:plist];
    STAssertEqualObjects(plist,[chart2 serializableDictionary],nil);
}


-(void)testTPChartOMeterSerialization
{
    TPChartOMeter *chart = [[TPChartOMeter alloc] init];
    chart.label = @"Hello World";
    chart.value = 200;
    
    id plist = [chart serializableDictionary];
    NSString *errorString;
    NSData *serializedPlist = [NSPropertyListSerialization dataFromPropertyList:plist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorString];
    STAssertNil(errorString,@"Error on plist serialization occured");
    NSData *reference = [NSData dataWithContentsOfFile:@"TPTestChartOMeter.plist"];
    STAssertNotNil(reference,nil);
    STAssertEqualObjects(serializedPlist,reference,nil);
    
    //reinport and compaire again
    TPChartOMeter *chart2 = [TPChartOMeter createChart:plist];
    STAssertEqualObjects(plist,[chart2 serializableDictionary],nil);
}
@end
