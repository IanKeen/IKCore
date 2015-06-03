#import "NSNumber+Times.h"

@implementation NSNumber (Times)
-(void)times:(timesBlock)block {
    for (NSInteger index = 0; index < [self integerValue]; index++) {
        block(index);
    }
}
@end
