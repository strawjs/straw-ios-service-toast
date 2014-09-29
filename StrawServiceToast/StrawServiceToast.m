#import "StrawServiceToast.h"

@implementation StrawServiceToast

@synthesize viewController;

- (NSString *)name
{
    return @"toast";
}

- (BOOL)isBackgroundJob:(NSString *)method
{
    return NO;
}

- (void)toast:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context
{
    [self.viewController.view makeToast:params[@"text"]];
}

@end
