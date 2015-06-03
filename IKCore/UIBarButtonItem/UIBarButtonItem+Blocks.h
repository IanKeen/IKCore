#import <UIKit/UIKit.h>
#import <objc/runtime.h>

typedef void (^barButtonItemActionBlock)(id sender);

/**
 Adds block based methods to UIBarButtonItem to break out of the delegate pattern
 */
@interface UIBarButtonItem (Blocks)
-(id)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem block:(barButtonItemActionBlock)action;
-(id)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style block:(barButtonItemActionBlock)action;
-(id)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style block:(barButtonItemActionBlock)action;
-(id)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style block:(barButtonItemActionBlock)action;
-(id)initWithCustomView:(UIView *)customView block:(barButtonItemActionBlock)action;
@end
