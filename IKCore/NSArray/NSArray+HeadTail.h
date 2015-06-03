#import <Foundation/Foundation.h>

@interface NSArray (HeadTail)
/**
 *  @return Returns the first element of the array
 */
-(id)head;

/**
 *  @return NSArray containing all elements of the array except the first (head)
 */
-(NSArray *)tail;
@end