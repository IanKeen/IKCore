#import <Foundation/Foundation.h>

@interface NSDate (Building)
/**
 *  Constructs an NSDate
 *
 *  @param year     Year
 *  @param month    Month
 *  @param day      Day
 *  @param hour     Hour (24 Hour)
 *  @param minute   Minute
 *  @param second   Second
 *  @param timeZone NSTimeZone
 *
 *  @return An NSDate with the specified unit values
 */
+(NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second inTimezone:(NSTimeZone *)timeZone;

/**
 *  Constructs an NSDate
 *
 *  @param year     Year
 *  @param month    Month
 *  @param day      Day
 *  @param hour     Hour (24 Hour)
 *  @param minute   Minute
 *  @param second   Second
 *
 *  @return An NSDate with the specified unit values
 */
+(NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second;

/**
 *  Constructs an NSDate
 *
 *  @param year     Year
 *  @param month    Month
 *  @param day      Day
 *  @param timeZone NSTimeZone
 *
 *  @return An NSDate with the specified unit values
 */
+(NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day inTimezone:(NSTimeZone *)timeZone;

/**
 *  Constructs an NSDate
 *
 *  @param year     Year
 *  @param month    Month
 *  @param day      Day
 *
 *  @return An NSDate with the specified unit values
 */
+(NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;
@end
