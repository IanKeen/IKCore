#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSNumber+DurationString.h"

@interface NSNumber_DurationString : XCTestCase
@end

@implementation NSNumber_DurationString
-(void)testYearsExact {
    //given
    NSNumber *number = @(60 * 60 * 24 * 365);
    
    //when
    NSString *result = [number duration];
    
    //then
    XCTAssertTrue([result isEqualToString:@"1y"]);
}
-(void)testMonthsExact {
    //given
    NSNumber *number = @(60 * 60 * 24 * 31);
    
    //when
    NSString *result = [number duration];
    
    //then
    XCTAssertTrue([result isEqualToString:@"1mo"]);
}
-(void)testWeeksExact {
    //given
    NSNumber *number = @(60 * 60 * 24 * 7);
    
    //when
    NSString *result = [number duration];
    
    //then
    XCTAssertTrue([result isEqualToString:@"1wk"]);
}
-(void)testDaysExact {
    //given
    NSNumber *number = @(60 * 60 * 24);
    
    //when
    NSString *result = [number duration];
    
    //then
    XCTAssertTrue([result isEqualToString:@"1d"]);
}
-(void)testHoursExact {
    //given
    NSNumber *number = @(60 * 60);
    
    //when
    NSString *result = [number duration];
    
    //then
    XCTAssertTrue([result isEqualToString:@"1h"]);
}
-(void)testMinsExact {
    //given
    NSNumber *number = @(60);
    
    //when
    NSString *result = [number duration];
    
    //then
    XCTAssertTrue([result isEqualToString:@"1min"]);
}
-(void)testSecondsExact {
    //given
    NSNumber *number = @(1);
    
    //when
    NSString *result = [number duration];
    
    //then
    XCTAssertTrue([result isEqualToString:@"1s"]);
}

-(void)testYearCombos {
    //given
    NSInteger year      = 60 * 60 * 24 * 365;
    NSInteger month     = 60 * 60 * 24 * 31;
    NSInteger week      = 60 * 60 * 24 * 7;
    NSInteger day       = 60 * 60 * 24;
    NSInteger hour      = 60 * 60;
    NSInteger min       = 60;
    NSInteger second    = 1;
    
    NSInteger anomoly   = 4;
    
    //when
    NSString *comboMonth = [@(year + month + anomoly) duration];
    NSString *comboWeek = [@(year + week + anomoly) duration];
    NSString *comboDay = [@(year + day + anomoly) duration];
    NSString *comboHour = [@(year + hour + anomoly) duration];
    NSString *comboMin = [@(year + min + anomoly) duration];
    NSString *comboSecond = [@(year + second + anomoly) duration];
    
    //then
    XCTAssertTrue([comboMonth isEqualToString:@"1y 1mo"]);
    XCTAssertTrue([comboWeek isEqualToString:@"1y 1wk"]);
    XCTAssertTrue([comboDay isEqualToString:@"1y 1d"]);
    XCTAssertTrue([comboHour isEqualToString:@"1y 1h"]);
    XCTAssertTrue([comboMin isEqualToString:@"1y 1min"]);
    XCTAssertTrue([comboSecond isEqualToString:@"1y 5s"]);
}
-(void)testMonthCombos {
    //given
    NSInteger month     = 60 * 60 * 24 * 31;
    NSInteger week      = 60 * 60 * 24 * 7;
    NSInteger day       = 60 * 60 * 24;
    NSInteger hour      = 60 * 60;
    NSInteger min       = 60;
    NSInteger second    = 1;
    
    NSInteger anomoly   = 4;
    
    //when
    NSString *comboWeek = [@(month + week + anomoly) duration];
    NSString *comboDay = [@(month + day + anomoly) duration];
    NSString *comboHour = [@(month + hour + anomoly) duration];
    NSString *comboMin = [@(month + min + anomoly) duration];
    NSString *comboSecond = [@(month + second + anomoly) duration];
    
    //then
    XCTAssertTrue([comboWeek isEqualToString:@"1mo 1wk"]);
    XCTAssertTrue([comboDay isEqualToString:@"1mo 1d"]);
    XCTAssertTrue([comboHour isEqualToString:@"1mo 1h"]);
    XCTAssertTrue([comboMin isEqualToString:@"1mo 1min"]);
    XCTAssertTrue([comboSecond isEqualToString:@"1mo 5s"]);
}
-(void)testWeekCombos {
    //given
    NSInteger week      = 60 * 60 * 24 * 7;
    NSInteger day       = 60 * 60 * 24;
    NSInteger hour      = 60 * 60;
    NSInteger min       = 60;
    NSInteger second    = 1;
    
    NSInteger anomoly   = 4;
    
    //when
    NSString *comboDay = [@(week + day + anomoly) duration];
    NSString *comboHour = [@(week + hour + anomoly) duration];
    NSString *comboMin = [@(week + min + anomoly) duration];
    NSString *comboSecond = [@(week + second + anomoly) duration];
    
    //then
    XCTAssertTrue([comboDay isEqualToString:@"1wk 1d"]);
    XCTAssertTrue([comboHour isEqualToString:@"1wk 1h"]);
    XCTAssertTrue([comboMin isEqualToString:@"1wk 1min"]);
    XCTAssertTrue([comboSecond isEqualToString:@"1wk 5s"]);
}
-(void)testDayCombos {
    //given
    NSInteger day       = 60 * 60 * 24;
    NSInteger hour      = 60 * 60;
    NSInteger min       = 60;
    NSInteger second    = 1;
    
    NSInteger anomoly   = 4;
    
    //when
    NSString *comboHour = [@(day + hour + anomoly) duration];
    NSString *comboMin = [@(day + min + anomoly) duration];
    NSString *comboSecond = [@(day + second + anomoly) duration];
    
    //then
    XCTAssertTrue([comboHour isEqualToString:@"1d 1h"]);
    XCTAssertTrue([comboMin isEqualToString:@"1d 1min"]);
    XCTAssertTrue([comboSecond isEqualToString:@"1d 5s"]);
}
-(void)testHourCombos {
    //given
    NSInteger hour      = 60 * 60;
    NSInteger min       = 60;
    NSInteger second    = 1;
    
    NSInteger anomoly   = 4;
    
    //when
    NSString *comboMin = [@(hour + min + anomoly) duration];
    NSString *comboSecond = [@(hour + second + anomoly) duration];
    
    //then
    XCTAssertTrue([comboMin isEqualToString:@"1h 1min"]);
    XCTAssertTrue([comboSecond isEqualToString:@"1h 5s"]);
}
-(void)testMinCombos {
    //given
    NSInteger min       = 60;
    NSInteger second    = 1;
    
    NSInteger anomoly   = 4;
    
    //when
    NSString *comboSecond = [@(min + second + anomoly) duration];
    
    //then
    XCTAssertTrue([comboSecond isEqualToString:@"1min 5s"]);
}
@end
