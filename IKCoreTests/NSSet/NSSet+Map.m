#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSSet+Map.h"

@interface NSSet_Map : XCTestCase

@end

@implementation NSSet_Map
-(void)testAllUnique {
    //given
    NSSet *data = [NSSet setWithArray:@[@1, @2, @3, @4, @5]];
    
    //when
    NSSet *output = [data map:^id(NSNumber *item) {
        return @([item integerValue] + 1);
    }];
    
    //then
    BOOL result = [output isEqualToSet:[NSSet setWithArray:@[@2, @3, @4, @5, @6]]];
    XCTAssertTrue(result);
}
-(void)testDuplicates {
    //given
    NSSet *data = [NSSet setWithArray:@[@1, @2, @3, @4, @5]];
    
    //when
    NSSet *output = [data map:^id(NSNumber *item) {
        return ([item integerValue] % 2 ? @"Test" : item);
    }];
    
    //then
    BOOL result = [output isEqualToSet:[NSSet setWithArray:@[@2, @4, @"Test"]]];
    XCTAssertTrue(result);
}
-(void)testNils {
    //given
    NSSet *data = [NSSet setWithArray:@[@1, @2, @3, @4, @5]];
    
    //when
    NSSet *output = [data map:^id(NSNumber *item) {
        return ([item integerValue] % 2 ? nil : item);
    }];
    
    //then
    BOOL result = [output isEqualToSet:[NSSet setWithArray:@[@2, @4]]];
    XCTAssertTrue(result);
}
@end
