#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDate+Building.h"
#import "NSDate+StringFormatting.h"

@interface NSDate_StringFormatting : XCTestCase

@end

@implementation NSDate_StringFormatting

- (void)testTimeStyle {
    //given
    NSDate *date = [NSDate dateWithYear:2015 month:8 day:28 hour:11 minute:42 second:37 inTimezone:[self timeZone]];
    
    //when
    NSString *result = [date toStringWithTimeStyle:NSDateFormatterShortStyle timezone:[self timeZone]];
    
    //then
    NSString *expected = @"11:42 AM";
    XCTAssertTrue([result isEqualToString:expected]);
}
- (void)testDateStyle {
    //given
    NSDate *date = [NSDate dateWithYear:2015 month:8 day:28 hour:11 minute:42 second:37 inTimezone:[self timeZone]];
    
    //when
    NSString *result = [date toStringWithDateStyle:NSDateFormatterShortStyle timezone:[self timeZone]];
    
    //then
    NSString *expected = @"8/28/15";
    XCTAssertTrue([result isEqualToString:expected]);
}
- (void)testDateFormat {
    //given
    NSDate *date = [NSDate dateWithYear:2015 month:8 day:28 hour:11 minute:42 second:37 inTimezone:[self timeZone]];
    
    //when
    NSString *result = [date toStringWithFormat:@"YYYY-MMM-dd hh:mm:ss aa" timezone:[self timeZone]];
    
    //then
    NSString *expected = @"2015-Aug-28 11:42:37 AM";
    XCTAssertTrue([result isEqualToString:expected]);
}
                    
#pragma mark - Helpers
-(NSTimeZone *)timeZone {
    return [NSTimeZone timeZoneWithName:@"America/Vancouver"];
}
@end
