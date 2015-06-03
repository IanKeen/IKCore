#import "UIView+ExclusiveTouch.h"

@implementation UIView (ExclusiveTouch)
-(void)setExclusiveTouchRecursive:(BOOL)exclusiveTouch {
    self.exclusiveTouch = exclusiveTouch;
    
    [self.subviews enumerateObjectsUsingBlock:^(UIView *obj, NSUInteger idx, BOOL *stop) {
        [obj setExclusiveTouchRecursive:exclusiveTouch];
    }];
}
@end
