#import "NSMutableSet+ThreadSafe.h"

@implementation NSMutableSet (ThreadSafe)
-(void)addObject:(id)object serialQueue:(dispatch_queue_t)queue {
    dispatch_sync(queue, ^{ [self addObject:object]; });
}
-(void)removeObject:(id)object serialQueue:(dispatch_queue_t)queue {
    dispatch_sync(queue, ^{ [self removeObject:object]; });
}
-(void)removeAllObjectsUsingSerialQueue:(dispatch_queue_t)queue {
    dispatch_sync(queue, ^{ [self removeAllObjects]; });
}
-(NSUInteger)countUsingSerialQueue:(dispatch_queue_t)queue {
    __block NSInteger count = 0;
    dispatch_sync(queue, ^{ count = self.count; });
    return count;
}
-(NSArray *)allObjectsUsingSerialQueue:(dispatch_queue_t)queue {
    __block NSArray *result = nil;
    dispatch_sync(queue, ^{ result = self.allObjects; });
    return result;
}
@end