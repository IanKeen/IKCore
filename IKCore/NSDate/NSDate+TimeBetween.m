//
//  NSDate+TimeBetween
//
//  Created by Ian Keen on 2/06/2015.
//  Copyright (c) 2015 IanKeen. All rights reserved.
//

#import "NSDate+TimeBetween.h"

#define TIMESTRING(property, string) \
    if (comp.property > 0) { \
        BOOL first = ([when length] == 0); \
        [when appendFormat:@"%i%@ ", (int)comp.property, string]; \
        if (!first) { break; } \
    }

#define PLURALIZE(long, property, S, P) [NSString stringWithFormat:@"%@%s", (long ? @" " : @""), (comp.property == 1 ? #S : #P)]

@implementation NSDate (TimeBetween)
-(NSString *)timeBetween:(NSDate *)reference {
    return [self timeBetween:reference long:NO];
}
-(NSString *)timeBetween:(NSDate *)reference long:(BOOL)longStrings {
    NSDate *earliest = [self earlierDate:reference];
    NSDate *latest = [self laterDate:reference];
    
    NSTimeInterval seconds = [latest timeIntervalSinceDate:earliest];
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond) fromDate:earliest toDate:latest options:0];
    
    NSMutableString *when = [NSMutableString string];
    if (seconds > 0) {
        while (YES) {
            TIMESTRING(year, (longStrings ? PLURALIZE(longStrings, year, year, years) : PLURALIZE(longStrings, year, y, y)))
            TIMESTRING(month, (longStrings ? PLURALIZE(longStrings, month, month, months) : PLURALIZE(longStrings, month, mo, mo)))
            TIMESTRING(weekOfYear, (longStrings ? PLURALIZE(longStrings, weekOfYear, week, weeks) : PLURALIZE(longStrings, weekOfYear, wk, wk)))
            TIMESTRING(day, (longStrings ? PLURALIZE(longStrings, day, day, days) : PLURALIZE(longStrings, day, d, d)))
            TIMESTRING(hour, (longStrings ? PLURALIZE(longStrings, hour, hour, hours) : PLURALIZE(longStrings, hour, h, h)))
            TIMESTRING(minute, (longStrings ? PLURALIZE(longStrings, minute, minute, minutes) : PLURALIZE(longStrings, minute, min, min)))
            TIMESTRING(second, (longStrings ? PLURALIZE(longStrings, second, second, seconds) : PLURALIZE(longStrings, second, s, s)))
            break;
        }
    } else { [when appendFormat:@"0%@ ", (longStrings ? PLURALIZE(longStrings, second, second, seconds) : PLURALIZE(longStrings, second, s, s))]; }
    return [when substringToIndex:when.length - 1];
}
@end