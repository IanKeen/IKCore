#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+All.h"

@interface NSArray_All : XCTestCase

@end

@implementation NSArray_All
- (void)testAllTrue {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    BOOL result = [items all:^BOOL(NSNumber *item) {
        return (item.integerValue > 0);
    }];
    
    //then
    XCTAssertTrue(result == YES);
}
- (void)testAllFalse {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    BOOL result = [items all:^BOOL(NSNumber *item) {
        return (item.integerValue < 4);
    }];
    
    //then
    XCTAssertTrue(result == NO);
}
@end
