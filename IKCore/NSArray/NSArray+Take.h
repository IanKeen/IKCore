#import <Foundation/Foundation.h>

@interface NSArray (Take)
/**
 *  Takes the given number of elements starting at index 0 from the array
 *  and returns the result in a new NSArray.
 *
 *  If number is less than 1 an empty array is returned
 *  If number is greater than self.count a copy of self will be returned
 *
 *  @param number The number of elements to take
 *
 *  @return A new NSArray containing the taken element
 */
-(NSArray *)take:(NSInteger)number;
@end
