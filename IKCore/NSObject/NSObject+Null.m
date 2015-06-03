#import "NSObject+Null.h"

BOOL nilOrEmpty(id object) { return [NSObject nilOrEmpty:object]; }

@implementation NSObject (NilOrEmpty)
+(BOOL)nilOrEmpty:(id)object {
    return (
            object == nil ||
            [object isKindOfClass:[NSNull class]] ||
            ([object isKindOfClass:[NSString class]] && ([object isEqualToString:@""])) ||
            ([object isKindOfClass:[NSArray class]] && (((NSArray *)object).count == 0)) ||
            ([object isKindOfClass:[NSSet class]] && (((NSSet *)object).count == 0)) ||
            ([object isKindOfClass:[NSDictionary class]] && (((NSDictionary *)object).allKeys.count == 0))
            );
}
@end