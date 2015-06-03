#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Unique.h"

@interface NSArray_Unique : XCTestCase
@end

@implementation NSArray_Unique
- (void)testUnique {
    //given
    NSArray *items = @[@1, @3, @2, @3, @4, @2, @1];
    
    //when
    NSArray *result = [items unique];
    
    //then
    NSArray *expectedResult = @[@1, @3, @2, @4];
    XCTAssertTrue([result isEqualToArray:expectedResult]);
}
- (void)testUniqueWhenNotNeeded {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    NSArray *result = [items unique];
    
    //then
    NSArray *expectedResult = @[@1, @2, @3, @4];
    XCTAssertTrue([result isEqualToArray:expectedResult]);
}
@end
