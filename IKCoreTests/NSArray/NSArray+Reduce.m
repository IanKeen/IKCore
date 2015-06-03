#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Reduce.h"

@interface NSArray_Reduce : XCTestCase

@end

@implementation NSArray_Reduce
- (void)testReduce {
    //when
    NSArray *items = @[@1, @2, @3, @4];
    
    //given
    NSNumber *result = [items reduce:@0 function:^id(NSNumber *accumulator, NSNumber *item) {
        return @([accumulator integerValue] + [item integerValue]);
    }];
    
    //then
    XCTAssertTrue([result isEqualToNumber:@10]);
}
@end
