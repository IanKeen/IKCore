#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+HeadTail.h"

@interface NSArray_HeadTail : XCTestCase

@end

@implementation NSArray_HeadTail
- (void)testHead {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    NSNumber *result = [items head];
    
    //then
    XCTAssertTrue([result isEqualToNumber:@1]);
}
- (void)testTail {
    //given
    NSArray *items = @[@1, @2, @3, @4];
    
    //when
    NSArray *result = [items tail];
    
    //then
    NSArray *expected = @[@2, @3, @4];
    XCTAssertTrue([result isEqualToArray:expected]);
}
@end
