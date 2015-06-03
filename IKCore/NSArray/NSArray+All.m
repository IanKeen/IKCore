#import "NSArray+All.h"

@implementation NSArray (All)
-(BOOL)all:(allFunction)function {
    __block BOOL result = YES;
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (!function(obj)) {
            result = NO;
            *stop = YES;
        }
    }];
    return result;
}
@end
