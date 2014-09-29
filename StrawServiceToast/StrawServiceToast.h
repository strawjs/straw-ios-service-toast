#import <Foundation/Foundation.h>
#import <Straw/Straw.h>
#import <UIView+Toast.h>

@interface StrawServiceToast : NSObject <STWService, STWServiceWithViewController>

- (void)toast:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context;

@end
