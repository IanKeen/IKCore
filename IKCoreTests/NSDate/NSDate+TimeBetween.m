#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDate+TimeBetween.h"
#import "NSDate+Building.h"
#import "NSDate+Shortcuts.h"

@interface NSDate_TimeSince : XCTestCase

@end

@implementation NSDate_TimeSince
- (void)testExample {
    //given
    NSDate *d1 = [NSDate dateWithYear:2015 month:8 day:28 hour:14 minute:42 second:12 inTimezone:[self timeZone]];
    NSDate *d2a = [d1 dateByAddingDays:-1];
    NSDate *d3a = [d2a dateByAddingWeeks:-2];
    NSDate *d4a = [d3a dateByAddingMonths:-3];
    NSDate *d5a = [d4a dateByAddingYears:-4];
    NSDate *d6a = [d1 dateByAddingTimeInterval:-1];
    
    NSDate *d2b = [d1 dateByAddingDays:1];
    NSDate *d3b = [d2b dateByAddingWeeks:2];
    NSDate *d4b = [d3b dateByAddingMonths:3];
    NSDate *d5b = [d4b dateByAddingYears:4];
    NSDate *d6b = [d1 dateByAddingTimeInterval:1];
    
    //when
    //A
    NSString *a_resultDays = [d2a timeBetween:d1];
    NSString *a_resultDaysAndWeeks = [d3a timeBetween:d1];
    NSString *a_resultDaysAndWeeksAndMonths = [d4a timeBetween:d1];
    NSString *a_resultDaysAndWeeksAndMonthsAndYears = [d5a timeBetween:d1];
    NSString *a_resultJustNow = [d6a timeBetween:d1];
    //B
    NSString *b_resultDays = [d2b timeBetween:d1];
    NSString *b_resultDaysAndWeeks = [d3b timeBetween:d1];
    NSString *b_resultDaysAndWeeksAndMonths = [d4b timeBetween:d1];
    NSString *b_resultDaysAndWeeksAndMonthsAndYears = [d5b timeBetween:d1];
    NSString *b_resultJustNow = [d6b timeBetween:d1];
    
    //then
    //A
    XCTAssertTrue([a_resultDays isEqualToString:@"1d"]);
    XCTAssertTrue([a_resultDaysAndWeeks isEqualToString:@"2wk 1d"]);
    XCTAssertTrue([a_resultDaysAndWeeksAndMonths isEqualToString:@"3mo 2wk"]);
    XCTAssertTrue([a_resultDaysAndWeeksAndMonthsAndYears isEqualToString:@"4y 3mo"]);
    XCTAssertTrue([a_resultJustNow isEqualToString:@"1s"]);
    
    //A
    XCTAssertTrue([b_resultDays isEqualToString:@"1d"]);
    XCTAssertTrue([b_resultDaysAndWeeks isEqualToString:@"2wk 1d"]);
    XCTAssertTrue([b_resultDaysAndWeeksAndMonths isEqualToString:@"3mo 2wk"]);
    XCTAssertTrue([b_resultDaysAndWeeksAndMonthsAndYears isEqualToString:@"4y 3mo"]);
    XCTAssertTrue([b_resultJustNow isEqualToString:@"1s"]);
}

#pragma mark - Helpers
-(NSTimeZone *)timeZone {
    return [NSTimeZone timeZoneWithName:@"America/Vancouver"];
}
@end
