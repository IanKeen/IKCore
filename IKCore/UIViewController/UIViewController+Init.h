#import <UIKit/UIKit.h>

@interface UIViewController (Init)
/**
 *  Convenience method to create an instance of a UIViewController using the standard initWithNibName:bundle:
 *  This works for both Objective-C and Swift
 *
 *  @return UIViewController instance
 */
+(instancetype)instance;
@end
