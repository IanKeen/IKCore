//
//  DataStore+Tests.m
//  MSUtilities
//
//  Created by Ian Keen on 28/05/2015.
//  Copyright (c) 2015 Mustard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DataStore.h"

@interface DataStore_Tests : XCTestCase
@property (nonatomic, strong) NSMutableDictionary *dictionary;
@end

@implementation DataStore_Tests
-(void)setUp { self.dictionary = [NSMutableDictionary dictionary]; }
-(void)tearDown { self.dictionary = nil; }

-(void)testNew {
    //given
    DataStore *store = [[DataStore alloc] initWithKeyValueStore:self.dictionary named:@"Test"];
    (void)store; //HAX: to remove compiler warning
    
    //when
    //..nothing..
    
    //then
    XCTAssertTrue([self.dictionary isEqualToDictionary:@{}]);
}
-(void)testAdd {
    //given
    DataStore *store = [[DataStore alloc] initWithKeyValueStore:self.dictionary named:@"Test"];
    
    //when
    [store setObject:@"Value" forKey:@"Test"];
    
    //then
    XCTAssertTrue([self.dictionary isEqualToDictionary:@{@"Test": @{@"Test": @"Value"}}]);
}
-(void)testEdit {
    //given
    DataStore *store = [[DataStore alloc] initWithKeyValueStore:self.dictionary named:@"Test"];
    
    //when
    [store setObject:@"Value" forKey:@"Test"];
    [store setObject:@"NewValue" forKey:@"Test"];
    
    //then
    XCTAssertTrue([self.dictionary isEqualToDictionary:@{@"Test": @{@"Test": @"NewValue"}}]);
}
-(void)testRemove {
    //given
    DataStore *store = [[DataStore alloc] initWithKeyValueStore:self.dictionary named:@"Test"];
    
    //when
    [store setObject:@"Value" forKey:@"Test"];
    [store removeObjectForKey:@"Test"];
    
    //then
    XCTAssertTrue([self.dictionary isEqualToDictionary:@{@"Test": @{}}]);
}
-(void)testReset {
    //given
    DataStore *store = [[DataStore alloc] initWithKeyValueStore:self.dictionary named:@"Test"];
    
    //when
    [store setObject:@"Value" forKey:@"Test"];
    [store reset];
    
    //then
    XCTAssertTrue([self.dictionary isEqualToDictionary:@{}]);
}
@end
