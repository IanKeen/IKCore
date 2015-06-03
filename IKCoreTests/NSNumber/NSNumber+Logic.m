#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSNumber+Logic.h"

@interface NSNumber_Logic : XCTestCase
@end

@implementation NSNumber_Logic
-(void)testLessThanPositive {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([low lessThan:high]);
}
-(void)testLessThanNegative {
    //given
    //when
    NSNumber *low = @(-8);
    NSNumber *high = @(-4);
    
    //then
    XCTAssertTrue([low lessThan:high]);
}
-(void)testLessThanBoth {
    //given
    //when
    NSNumber *low = @(-4);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([low lessThan:high]);
}

-(void)testGreaterThanPositive {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([high greaterThan:low]);
}
-(void)testGreaterThanNegative {
    //given
    //when
    NSNumber *low = @(-8);
    NSNumber *high = @(-4);
    
    //then
    XCTAssertTrue([high greaterThan:low]);
}
-(void)testGreaterThanBoth {
    //given
    //when
    NSNumber *low = @(-4);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([high greaterThan:low]);
}

-(void)testBetweenPositive {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *middle = @(6);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([middle between:low and:high strict:NO]);
}
-(void)testBetweenPositiveStrict {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *middle = @(6);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([middle between:low and:high strict:YES]);
}
-(void)testBetweenPositive_Low {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *middle = @(4);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([middle between:low and:high strict:NO]);
}
-(void)testBetweenPositiveStrict_Low {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *middle = @(4);
    NSNumber *high = @(8);
    
    //then
    XCTAssertFalse([middle between:low and:high strict:YES]);
}
-(void)testBetweenPositive_High {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *middle = @(8);
    NSNumber *high = @(8);
    
    //then
    XCTAssertTrue([middle between:low and:high strict:NO]);
}
-(void)testBetweenPositiveStrict_High {
    //given
    //when
    NSNumber *low = @(4);
    NSNumber *middle = @(8);
    NSNumber *high = @(8);
    
    //then
    XCTAssertFalse([middle between:low and:high strict:YES]);
}
@end
