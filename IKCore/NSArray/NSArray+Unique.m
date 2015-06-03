#import "NSArray+Unique.h"
#import "NSArray+Reduce.h"

@implementation NSArray (Unique)
-(NSArray *)unique {
    NSOrderedSet *set = [NSOrderedSet orderedSetWithArray:self];
    return [NSArray arrayWithArray:set.array];
}
@end
