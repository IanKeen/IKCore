#import "UIViewController+Init.h"

@implementation UIViewController (Init)
+(instancetype)instance {
    NSString *nibName = NSStringFromClass([self class]);
    if ([nibName rangeOfString:@"."].location != NSNotFound) {
        //to accomodate swift viewcontrollers
        nibName = [[nibName componentsSeparatedByString:@"."] lastObject];
    }
    return [[self alloc] initWithNibName:nibName bundle:nil];
}
@end
