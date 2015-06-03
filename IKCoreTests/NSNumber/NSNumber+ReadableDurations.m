#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSNumber+ReadableDurations.h"

@interface NSNumber_ReadableDurations : XCTestCase

@end

@implementation NSNumber_ReadableDurations
-(void)testOutput {
    //given
    //when
    NSInteger week      = 60 * 60 * 24 * 7;
    NSInteger day       = 60 * 60 * 24;
    NSInteger hour      = 60 * 60;
    NSInteger min       = 60;
    NSInteger second    = 1;
    
    //then
    XCTAssertTrue(week == @(1).week);
    XCTAssertTrue(day == @(1).day);
    XCTAssertTrue(hour == @(1).hour);
    XCTAssertTrue(min == @(1).minute);
    XCTAssertTrue(second == @(1).second);
}
@end
