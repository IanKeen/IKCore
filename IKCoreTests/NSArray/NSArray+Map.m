#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Map.h"

@interface NSArray_Map : XCTestCase

@end

@implementation NSArray_Map
- (void)testMap {
    //when
    NSArray *items = @[@1, @2, @3, @4];
    
    //given
    NSArray *result = [items map:^id(NSNumber *item) {
        return @([item integerValue] * 10);
    }];
    
    //then
    NSArray *expected = @[@10, @20, @30, @40];
    XCTAssertTrue([result isEqualToArray:expected]);
}
- (void)testMapWithIndex {
    //when
    NSArray *items = @[@1, @2, @3, @4];
    
    //given
    NSArray *result = [items mapWithIndex:^id(NSInteger index, NSNumber *item) {
        return @([item integerValue] * index);
    }];
    
    //then
    NSArray *expected = @[@0, @2, @6, @12];
    XCTAssertTrue([result isEqualToArray:expected]);
}
- (void)testFlatMap {
    //when
    NSArray *items = @[@1, @2, @3, @4];
    
    //given
    NSArray *result = [items flatMap:^NSArray *(NSNumber *item) {
        return @[@([item integerValue] * 10)];
    }];
    
    //then
    NSArray *expected = @[@10, @20, @30, @40];
    XCTAssertTrue([result isEqualToArray:expected]);
}
@end
