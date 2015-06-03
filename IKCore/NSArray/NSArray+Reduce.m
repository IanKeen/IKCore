#import "NSArray+Reduce.h"

@implementation NSArray (Reduce)
-(id)reduce:(id)initial function:(reduceFunction)function {
    __block id value = initial;
    [self enumerateObjectsUsingBlock:^(id item, NSUInteger idx, BOOL *stop) {
        value = function(value, item);
    }];
    return value;
}
@end