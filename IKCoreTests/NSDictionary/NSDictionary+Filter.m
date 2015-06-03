#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+Filter.h"

@interface NSDictionary_Filter : XCTestCase

@end

@implementation NSDictionary_Filter
- (void)testExample {
    //when
    NSDictionary *initial = @{@"one": @1, @"two": @2, @"three": @3};
    
    //given
    NSDictionary *result = [initial filter:^BOOL(NSString *key, NSNumber *value) {
        return ([value integerValue] != 2);
    }];
    
    //then
    NSDictionary *expected = @{@"one": @1, @"three": @3};
    XCTAssertTrue([result isEqualToDictionary:expected]);
}
@end
