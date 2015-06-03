#import <Foundation/Foundation.h>

//'strict' does not allow inputs to equal the upper or lower bounds

@interface NSNumber (Logic)
/**
 *  Determine if the receiver is between a lower and upper bounds
 *
 *  @param lower  Lowest value in the range
 *  @param upper  Highest value in the range
 *  @param strict When YES > and < are used, otherwise >= and <=
 *
 *  @return YES is the receiver is within the range otherwise NO
 */
-(BOOL)between:(NSNumber *)lower and:(NSNumber *)upper strict:(BOOL)strict;

/**
 *  Determine if the receiver is less than the given number
 *
 *  @param otherNumber Number to test with
 *
 *  @return BOOL
 */
-(BOOL)lessThan:(NSNumber *)otherNumber;

/**
 *  Determine if the receiver is greater than the given number
 *
 *  @param otherNumber Number to test with
 *
 *  @return BOOL
 */
-(BOOL)greaterThan:(NSNumber *)otherNumber;
@end
