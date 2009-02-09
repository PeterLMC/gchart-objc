//
//  TPChartSerializationProtocols.h
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


/**
 * Protocol to read/write a objects from/to a property list file.
 */
@protocol TPChartSerializationPropertyList

/**
 * Creates an object of the class who implements the protocol with the data from the plist  
 * @param plist property list object of the implementig class
 * @return new created object of the implementig class 
 */
+ (id)objectFromPropertyList:(id)plist;


/*
 * Createa an object of the class wo implements the protocol with the data from a given file.
 * @param plist file to a plist of the implementig class
 * @return new created object of the implementig class 
 */
//+ (id)objectFromPropertyListFile:(NSString *)plist;

/**
 * Generates a property list object of the implementig chart
 * @return a property list of the implementig chart
 */
- (id)propertyList;

/*
 * Writes a property list object of the implementig class to a file
 * @param plist file path to write the property list object
 */
//- (void)propertyList:(NSString *)plist;

@end

/**
 * Protocol for charts who are serialized to a NSDictionary\n
 * Normaly that every Chart calls its super class to get a NSMutableDictionary.\n
 * Afterwards it adds it's values to the dictionary and returns it.
 */
@protocol TPChartSerializationPropertyListDictionary

/**
 * Creates a new Chart with the given data
 * @param data Dictionary with the thata to create the object
 * @return a new initialized Chart
 */
@optional
+ (id)createChart:(NSDictionary *)data;

/**
 * To initialize a chart with data from a dictionary
 * @param data data to initialize the object
 */
- (id)initWithPlist:(NSDictionary *)data;

/**
 * Returns a NSMutableDictionary with the serilized data
 * @return serialized object
 */
- (NSMutableDictionary *)serializableDictionary;

@end

