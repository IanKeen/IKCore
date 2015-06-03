#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSObject+Introspection.h"

@protocol TestProtocol <NSObject>
@end

@protocol AnotherProtocol <NSObject>
@end

@interface IntrospectionClass : NSObject
@property (nonatomic, strong) NSString<AnotherProtocol> *name;
@property (nonatomic) NSInteger *integer;
@property (nonatomic, strong) NSSet<TestProtocol> *setWithProtocol;
@property (nonatomic, strong) NSSet<AnotherProtocol> *setWithoutProtocol;
@property (nonatomic, strong) NSObject<TestProtocol, AnotherProtocol> *bothProtocols;
@end

@implementation IntrospectionClass
@dynamic name, integer, setWithProtocol, setWithoutProtocol;
@end

@interface NSObject_Introspection : XCTestCase

@end

@implementation NSObject_Introspection
- (void)testWithProtocol {
    //given
    //when
    //then
    XCTAssertTrue([IntrospectionClass property:@"setWithProtocol" decoratedWith:@protocol(TestProtocol)]);
    XCTAssertTrue([IntrospectionClass property:@"bothProtocols" decoratedWith:@protocol(TestProtocol)]);
    XCTAssertTrue([IntrospectionClass property:@"bothProtocols" decoratedWith:@protocol(AnotherProtocol)]);
}
- (void)testWithoutProtocol {
    //given
    //when
    //then
    XCTAssertFalse([IntrospectionClass property:@"setWithoutProtocol" decoratedWith:@protocol(TestProtocol)]);
    XCTAssertFalse([IntrospectionClass property:@"integer" decoratedWith:@protocol(TestProtocol)]);
}

-(void)testProtocolSearch {
    //given
    //when
    //then
    NSArray *conforming = [IntrospectionClass propertiesDecoratedWith:@protocol(AnotherProtocol)];
    NSArray *expected = @[@"name", @"setWithoutProtocol", @"bothProtocols"];
    XCTAssertTrue([expected isEqualToArray:conforming]);
}
@end
