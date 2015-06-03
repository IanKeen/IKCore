#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSJSONSerialization+String.h"

@interface NSJSONSerialization_String : XCTestCase
@end

@implementation NSJSONSerialization_String
- (void)testJSON {
    //given
    NSDictionary *json = @{@"key1": @"value1", @"key2": @2};
    
    //when
    NSString *result = [NSJSONSerialization stringWithJSONObject:json options:0 error:nil];
    
    //then
    XCTAssertTrue([result isEqualToString:@"{\"key1\":\"value1\",\"key2\":2}"]);
}
- (void)testJSONEmpty {
    //given
    NSDictionary *json = @{};
    
    //when
    NSString *result = [NSJSONSerialization stringWithJSONObject:json options:0 error:nil];
    
    //then
    XCTAssertTrue([result isEqualToString:@"{}"]);
}
- (void)testJSONNil {
    //given
    //when
    NSString *result = [NSJSONSerialization stringWithJSONObject:nil options:0 error:nil];
    
    //then
    XCTAssertTrue(result == nil);
}
@end
