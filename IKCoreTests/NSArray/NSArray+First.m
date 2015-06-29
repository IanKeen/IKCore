//
//  NSArray+First.m
//  IKCore
//
//  Created by Ian Keen on 29/06/2015.
//  Copyright (c) 2015 IanKeen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+First.h"

@interface NSArray_First : XCTestCase
@end

@implementation NSArray_First
- (void)testFirstValid {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    NSNumber *result = [items first:^BOOL(NSNumber *item) {
        return (item.integerValue > 2);
    }];
    
    //then
    XCTAssertTrue([result isEqualToNumber:@3]);
}
- (void)testFirstInvalid {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    NSNumber *result = [items first:^BOOL(NSNumber *item) {
        return (item.integerValue > 10);
    }];
    
    //then
    XCTAssertNil(result);
}

@end
