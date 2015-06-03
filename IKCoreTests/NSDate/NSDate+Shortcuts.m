#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDate+Building.h"
#import "NSDate+Shortcuts.h"

@interface NSDate_Shortcuts : XCTestCase

@end

@implementation NSDate_Shortcuts
-(void)testStartOfDay {
    //given
    NSDate *date = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date startOfDay:[self timeZone]];
    
    //then
    BOOL result = [self date:new hasYear:2000 month:05 day:10 hour:0 minute:0 second:0];
    XCTAssertTrue(result);
}
-(void)testEndOfDay {
    //given
    NSDate *date = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date endOfDay:[self timeZone]];
    
    //then
    BOOL result = [self date:new hasYear:2000 month:05 day:10 hour:23 minute:59 second:59];
    XCTAssertTrue(result);
}
-(void)testStartOfWeek {
    //given
    NSDate *date = [NSDate dateWithYear:2015 month:04 day:16 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date startOfWeek:[self timeZone]];
    
    //then
    BOOL result = [self date:new hasYear:2015 month:04 day:12 hour:0 minute:0 second:0];
    XCTAssertTrue(result);
}
-(void)testEndOfWeek {
    //given
    NSDate *date = [NSDate dateWithYear:2015 month:04 day:16 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date endOfWeek:[self timeZone]];
    
    //then
    BOOL result = [self date:new hasYear:2015 month:04 day:18 hour:23 minute:59 second:59];
    XCTAssertTrue(result);
}

-(void)testSameDay {
    //given
    //when
    NSDate *date1a = [NSDate dateWithYear:2000 month:05 day:10 hour:0 minute:0 second:0 inTimezone:[self timeZone]];
    NSDate *date1b = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    NSDate *date1c = [NSDate dateWithYear:2000 month:05 day:10 hour:13 minute:0 second:40 inTimezone:[self timeZone]];
    NSDate *date1d = [NSDate dateWithYear:2000 month:05 day:10 hour:23 minute:59 second:59 inTimezone:[self timeZone]];
    
    NSDate *date2 = [NSDate dateWithYear:2000 month:05 day:11 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //then
    BOOL start = [date1a sameDay:date1b];
    XCTAssertTrue(start);
    
    BOOL normal = [date1b sameDay:date1c];
    XCTAssertTrue(normal);
    
    BOOL end = [date1c sameDay:date1d];
    XCTAssertTrue(end);
    
    BOOL full = [date1a sameDay:date1d];
    XCTAssertTrue(full);
    
    BOOL fail = [date1b sameDay:date2];
    XCTAssertFalse(fail);
}
-(void)testSameMonth {
    //given
    //when
    NSDate *date1a = [NSDate dateWithYear:2000 month:05 day:1 hour:0 minute:0 second:0 inTimezone:[self timeZone]];
    NSDate *date1b = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    NSDate *date1c = [NSDate dateWithYear:2000 month:05 day:15 hour:13 minute:0 second:40 inTimezone:[self timeZone]];
    NSDate *date1d = [NSDate dateWithYear:2000 month:05 day:31 hour:23 minute:59 second:59 inTimezone:[self timeZone]];
    
    NSDate *date2 = [NSDate dateWithYear:2000 month:06 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //then
    BOOL start = [date1a sameMonth:date1b];
    XCTAssertTrue(start);
    
    BOOL normal = [date1b sameMonth:date1c];
    XCTAssertTrue(normal);
    
    BOOL end = [date1c sameMonth:date1d];
    XCTAssertTrue(end);
    
    BOOL full = [date1a sameMonth:date1d];
    XCTAssertTrue(full);
    
    BOOL fail = [date1b sameMonth:date2];
    XCTAssertFalse(fail);
}
-(void)testSameYear {
    //given
    //when
    NSDate *date1a = [NSDate dateWithYear:2000 month:1 day:1 hour:0 minute:0 second:0 inTimezone:[self timeZone]];
    NSDate *date1b = [NSDate dateWithYear:2000 month:5 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    NSDate *date1c = [NSDate dateWithYear:2000 month:8 day:15 hour:13 minute:0 second:40 inTimezone:[self timeZone]];
    NSDate *date1d = [NSDate dateWithYear:2000 month:12 day:31 hour:23 minute:59 second:59 inTimezone:[self timeZone]];
    
    NSDate *date2 = [NSDate dateWithYear:2001 month:06 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //then
    BOOL start = [date1a sameYear:date1b];
    XCTAssertTrue(start);
    
    BOOL normal = [date1b sameYear:date1c];
    XCTAssertTrue(normal);
    
    BOOL end = [date1c sameYear:date1d];
    XCTAssertTrue(end);
    
    BOOL full = [date1a sameYear:date1d];
    XCTAssertTrue(full);
    
    BOOL fail = [date1b sameYear:date2];
    XCTAssertFalse(fail);
}

-(void)testAddDays {
    //given
    NSDate *date = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date dateByAddingDays:3];
    
    //then
    BOOL result = [self date:new hasYear:2000 month:05 day:13 hour:4 minute:30 second:0];
    XCTAssertTrue(result);
}
-(void)testAddWeeks {
    //given
    NSDate *date = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date dateByAddingWeeks:1];
    
    //then
    BOOL result = [self date:new hasYear:2000 month:05 day:17 hour:4 minute:30 second:0];
    XCTAssertTrue(result);
}
-(void)testAddMonths {
    //given
    NSDate *date = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date dateByAddingMonths:1];
    
    //then
    BOOL result = [self date:new hasYear:2000 month:06 day:10 hour:4 minute:30 second:0];
    XCTAssertTrue(result);
}
-(void)testAddYears {
    //given
    NSDate *date = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date dateByAddingYears:1];
    
    //then
    BOOL result = [self date:new hasYear:2001 month:05 day:10 hour:4 minute:30 second:0];
    XCTAssertTrue(result);
}

-(void)testTakeTime {
    //given
    NSDate *date1 = [NSDate dateWithYear:2000 month:05 day:10 hour:4 minute:30 second:15 inTimezone:[self timeZone]];
    NSDate *date2 = [NSDate dateWithYear:2007 month:01 day:15 hour:12 minute:7 second:00 inTimezone:[self timeZone]];
    
    //when
    NSDate *new = [date2 dateByTakingTimeFrom:date1];
    
    //then
    BOOL result = [self date:new hasYear:2007 month:01 day:15 hour:4 minute:30 second:15];
    XCTAssertTrue(result);
}

#pragma mark - Helpers
-(NSTimeZone *)timeZone {
    return [NSTimeZone timeZoneWithName:@"America/Vancouver"];
}
-(BOOL)date:(NSDate *)date hasYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second {
    static dispatch_once_t onceToken;
    static NSCalendar *calendar = nil;
    dispatch_once(&onceToken, ^{
        calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        calendar.timeZone = [self timeZone];
    });
    
    NSDateComponents *c = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond) fromDate:date];
    return (c.year == year && c.month == month && c.day == day && c.hour == hour && c.minute == minute && c.second == second);
}
@end
