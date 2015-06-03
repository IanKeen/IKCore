#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+Take.h"

@interface NSArray_Take : XCTestCase

@end

@implementation NSArray_Take
- (void)testTake {
    //given
    NSArray *array = @[@1, @2, @3, @4];
    
    //when
    NSArray *takeOne = [array take:1];
    NSArray *takeAll = [array take:4];
    NSArray *takeTooLittle = [array take:-2];
    NSArray *takeTooMany = [array take:10];
    NSArray *takeNone = [array take:0];
    
    //then
    BOOL resultTakeOne = [takeOne isEqualToArray:@[@1]];
    XCTAssertTrue(resultTakeOne);
    
    BOOL resultTakeAll = [takeAll isEqualToArray:@[@1, @2, @3, @4]];
    XCTAssertTrue(resultTakeAll);
    
    BOOL resultTakeTooLittle = [takeTooLittle isEqualToArray:[NSArray array]];
    XCTAssertTrue(resultTakeTooLittle);
    
    BOOL resultTakeTooMany = [takeTooMany isEqualToArray:@[@1, @2, @3, @4]];
    XCTAssertTrue(resultTakeTooMany);
    
    BOOL resultTakeNone = [takeNone isEqualToArray:[NSArray array]];
    XCTAssertTrue(resultTakeNone);
}
@end
