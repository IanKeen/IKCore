#import <UIKit/UIKit.h>

typedef void (^gestureBlock)(UIGestureRecognizer *gesture);

/**
 Allows for any UIGestureRecognizer to use a block rather than the delegate pattern
 */
@interface UIGestureRecognizer (GestureBlocks)
-(id)initWithBlock:(gestureBlock)block;
@end
