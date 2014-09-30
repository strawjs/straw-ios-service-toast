#import <XCTest/XCTest.h>
#import "StrawServiceToast.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

@interface StrawServiceToastTests : XCTestCase

@end

@implementation StrawServiceToastTests

- (void)testName
{
    id<STWService> service = [[StrawServiceToast alloc] init];

    XCTAssertEqual(@"toast", [service name], @"Service name should be toast.");
}

- (void)testIsBackgroundJob
{
    id<STWService> service = [[StrawServiceToast alloc] init];

    XCTAssertFalse([service isBackgroundJob:@"toast"], @"toast method isn't a background job.");
}

- (void)testToast
{
    StrawServiceToast *service = [[StrawServiceToast alloc] init];

    UIViewController *viewController = mock([UIViewController class]);

    [viewController view];

    UIView *view = mock([UIView class]);

    [given([viewController view]) willReturn:view];

    service.viewController = viewController;

    [service toast:@{@"text": @"toast text"} withContext:nil];

    [verifyCount(view, times(1)) makeToast:@"toast text"];
}

@end
