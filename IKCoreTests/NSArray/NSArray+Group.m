#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Group.h"

@interface NSArray_Group : XCTestCase

@end

@implementation NSArray_Group
-(void)testGroup {
    //given
    NSArray *input = @[@1, @2, @3, @4, @5, @6];
    
    //when
    NSDictionary *result = [input groupBy:^id(NSNumber *item) {
        return ((item.integerValue % 2) == 0) ? @"Even" : @"Odd";
    }];
    
    //then
    NSDictionary *expected = @{@"Odd": @[@1, @3, @5], @"Even": @[@2, @4, @6]};
    XCTAssertTrue([result isEqualToDictionary:expected]);
}
-(void)testGroupNils {
    //given
    NSArray *input = @[@1, @2, @3, @4, @5, @6];
    
    //when
    NSDictionary *result = [input groupBy:^id(NSNumber *item) {
        return ((item.integerValue % 2) == 0) ? @"Even" : nil;
    }];
    
    //then
    NSDictionary *expected = @{@"Even": @[@2, @4, @6]};
    XCTAssertTrue([result isEqualToDictionary:expected]);
}
@end
