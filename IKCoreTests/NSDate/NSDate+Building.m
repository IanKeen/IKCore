#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDate+Building.h"

@interface NSDate_Building : XCTestCase
@end

@implementation NSDate_Building
-(void)testDateBuilding {
    //given
    NSDate *date = [NSDate dateWithYear:2000 month:5 day:10 hour:4 minute:30 second:0 inTimezone:[self timeZone]];
    
    //when
    NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitTimeZone) fromDate:date];
    
    //then
    BOOL result = (
                   components.year == 2000 &&
                   components.month == 5 &&
                   components.day == 10 &&
                   components.hour == 4 &&
                   components.minute == 30 &&
                   components.second == 0 &&
                   [components.timeZone isEqualToTimeZone:[self timeZone]]
                   );
    XCTAssertTrue(result);
}

#pragma mark - Helpers
-(NSTimeZone *)timeZone {
    return [NSTimeZone timeZoneWithName:@"America/Vancouver"];
}
@end
