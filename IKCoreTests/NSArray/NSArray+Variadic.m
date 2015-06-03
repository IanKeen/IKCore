#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Variadic.h"

@interface NSArray_Variadic : XCTestCase
@end

@implementation NSArray_Variadic
- (void)testVariadic {
    //given
    //when
    NSArray *items = [NSArray arraySized:4 values:@1, @2, @3, @4];
    
    //then
    NSArray *expectedResult = @[@1, @2, @3, @4];
    XCTAssertTrue([items isEqualToArray:expectedResult]);
}
- (void)testVariadicSomeNils {
    //given
    //when
    NSArray *items = [NSArray arraySized:4 values:@1, nil, nil, @4];
    
    //then
    NSArray *expectedResult = @[@1, [NSNull null], [NSNull null], @4];
    XCTAssertTrue([items isEqualToArray:expectedResult]);
}
- (void)testVariadicNilFirst {
    //given
    //when
    NSArray *items = [NSArray arraySized:4 values:nil, @2, @3, @4];
    
    //then
    NSArray *expectedResult = @[[NSNull null], @2, @3, @4];
    XCTAssertTrue([items isEqualToArray:expectedResult]);
}
- (void)testVariadicNilLast {
    //given
    //when
    NSArray *items = [NSArray arraySized:4 values:@1, @2, @3, nil];
    
    //then
    NSArray *expectedResult = @[@1, @2, @3, [NSNull null]];
    XCTAssertTrue([items isEqualToArray:expectedResult]);
}
- (void)testVariadicAllNils {
    //given
    //when
    NSArray *items = [NSArray arraySized:4 values:nil, nil, nil, nil];
    
    //then
    NSArray *expectedResult = @[[NSNull null], [NSNull null], [NSNull null], [NSNull null]];
    XCTAssertTrue([items isEqualToArray:expectedResult]);
}
@end
