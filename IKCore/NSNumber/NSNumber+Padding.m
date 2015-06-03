#import "NSNumber+Padding.h"

@implementation NSNumber (Padding)
-(NSString *)paddedStringWithZeros:(NSInteger)totalStringLength {
    return [NSString stringWithFormat:@"%0*d", (int)totalStringLength, [self intValue]];
}
@end
