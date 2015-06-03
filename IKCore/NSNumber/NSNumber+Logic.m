#import "NSNumber+Logic.h"

@implementation NSNumber (Logic)
-(BOOL)between:(NSNumber *)lower and:(NSNumber *)upper strict:(BOOL)strict {
    if (strict) {
        return ([self compare:lower] == NSOrderedDescending && [self compare:upper] == NSOrderedAscending);
    } else {
        return ([self compare:lower] != NSOrderedAscending && [self compare:upper] != NSOrderedDescending);
    }
}
-(BOOL)lessThan:(NSNumber *)otherNumber {
    return ([self compare:otherNumber] == NSOrderedAscending);
}
-(BOOL)greaterThan:(NSNumber *)otherNumber {
    return ([self compare:otherNumber] == NSOrderedDescending);
}
@end
