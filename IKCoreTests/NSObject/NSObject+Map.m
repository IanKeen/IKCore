#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSObject+Map.h"

@interface NSObject_Map : XCTestCase

@end

@implementation NSObject_Map

- (void)testObjectMap {
    //given
    NSNumber *number = @(2);
    
    //when
    NSString *string = (NSString *)number.map(^(NSNumber *n){ return [NSString stringWithFormat:@"%@", n]; });
    
    //then
    XCTAssertTrue([string isEqualToString:@"2"]);
}

@end
