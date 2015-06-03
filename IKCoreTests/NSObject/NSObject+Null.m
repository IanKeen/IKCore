#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSObject+Null.h"

@interface NSObject_Null : XCTestCase

@end

@implementation NSObject_Null

- (void)testNulls {
    //given
    //when
    NSObject *null = nil;
    NSNull *nullObject = [NSNull null];
    NSString *emptyString = @"";
    NSArray *emptyArray = [NSArray array];
    NSDictionary *emptyDict = [NSDictionary dictionary];
    
    NSObject *notNull = [NSObject new];
    NSString *notEmptyString = @"test";
    NSArray *notEmptyArray = @[@1, @2];
    NSDictionary *notEmptyDict = @{@"key": @"value"};
    
    //then
    XCTAssertTrue(nilOrEmpty(null));
    XCTAssertTrue(nilOrEmpty(nullObject));
    XCTAssertTrue(nilOrEmpty(emptyString));
    XCTAssertTrue(nilOrEmpty(emptyArray));
    XCTAssertTrue(nilOrEmpty(emptyDict));
    
    XCTAssertFalse(nilOrEmpty(notNull));
    XCTAssertFalse(nilOrEmpty(notEmptyString));
    XCTAssertFalse(nilOrEmpty(notEmptyArray));
    XCTAssertFalse(nilOrEmpty(notEmptyDict));
}

@end
