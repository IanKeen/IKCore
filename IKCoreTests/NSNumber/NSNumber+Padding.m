#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSNumber+Padding.h"

@interface NSNumber_Padding : XCTestCase

@end

@implementation NSNumber_Padding
-(void)testPadding {
    //when
    //given
    NSString *noPadding = [@1 paddedStringWithZeros:0];
    NSString *onePad = [@1 paddedStringWithZeros:1];
    NSString *twoPad = [@1 paddedStringWithZeros:2];
    NSString *threePad = [@1 paddedStringWithZeros:3];
    NSString *fourPad = [@1 paddedStringWithZeros:4];
    
    NSString *longString = [@1000 paddedStringWithZeros:2];
    
    //then
    XCTAssertTrue([noPadding isEqualToString:@"1"]);
    XCTAssertTrue([onePad isEqualToString:@"1"]);
    XCTAssertTrue([twoPad isEqualToString:@"01"]);
    XCTAssertTrue([threePad isEqualToString:@"001"]);
    XCTAssertTrue([fourPad isEqualToString:@"0001"]);
    
    XCTAssertTrue([longString isEqualToString:@"1000"]);
}
@end
