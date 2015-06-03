#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSNumber+Times.h"

@interface NSNumber_Times : XCTestCase

@end

@implementation NSNumber_Times
- (void)testTimes {
    //given
    __block NSInteger count = 0;
    __block NSInteger last = 0;
    
    //when
    [@(10) times:^(NSInteger index) {
        last = index;
        count++;
    }];
    
    //then
    XCTAssertTrue(count == 10);
    XCTAssertTrue(last == 9);
}
@end
