#import "NSDictionary+Filter.h"

@implementation NSDictionary (Filter)
-(NSDictionary *)filter:(dictionaryFilterFunction)function {
    NSMutableDictionary *result = [NSMutableDictionary new];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (function(key, obj)) { result[key] = obj; }
    }];
    return result;
}
@end
