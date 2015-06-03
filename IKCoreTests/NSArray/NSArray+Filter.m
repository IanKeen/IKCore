#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Filter.h"

@interface NSArray_Filter : XCTestCase

@end

@implementation NSArray_Filter
- (void)testFilter {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    NSArray *result = [items filter:^BOOL(NSNumber *item) {
        return [item compare:@3] == NSOrderedAscending;
    }];
    
    //then
    NSArray *expected = @[@1, @2];
    XCTAssertTrue([result isEqualToArray:expected]);
}
@end
