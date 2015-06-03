#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSError+Init.h"

@interface NSError_init : XCTestCase

@end

@implementation NSError_init

- (void)testErrorInit {
    //given
    NSError *e1 = [[NSError alloc] initWithDomain:@"Domain" code:0 userInfo:@{NSLocalizedDescriptionKey: @"Desc"}];
    
    //when
    NSError *e2 = [NSError errorWithDomain:@"Domain" description:@"Desc"];
    
    //then
    XCTAssertTrue([e1 isEqual:e2]);
}

@end
