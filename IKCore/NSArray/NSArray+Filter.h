#import <Foundation/Foundation.h>

typedef BOOL (^filterFunction)(id item);

@interface NSArray (Filter)
/**
 *  Returns a subset of items who pass the provided predicate
 *
 *  @param function A predicate to test each item in the list with
 *
 *  @return NSArray subset of item whose predicate result was YES
 */
-(NSArray *)filter:(filterFunction)function;
@end