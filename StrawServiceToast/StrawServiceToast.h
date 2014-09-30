#import <Foundation/Foundation.h>
#import <Straw/Straw.h>
#import <UIView+Toast.h>

/**
 StrawServiceToast is Straw Service class to show Toast UI component on the screen.
 */
@interface StrawServiceToast : NSObject <STWService, STWServiceWithViewController>

/**
 Toast (like Toast in Android) a message.

 @param params Straw Service call params. The value on @"text" key will be toasted on the screen.
 @param context Straw Service call context of execution. Not used.
 */
- (void)toast:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context;

@end
