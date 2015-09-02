//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     
     * Write your code here.
     
     */
    
    NSInteger i = 0;
    NSLog(@"i: %li", i);
    
    i = 1 + 1;
    NSLog(@"i: %li", i);
    
    i = 5 + 8;
    NSLog(@"i: %li", i);
    
    i = 10 - 8;
    NSLog(@"i: %li", i);
    
    i = 8 - 10;
    NSLog(@"i: %li", i);
    
    i = 2 * 3;
    NSLog(@"i: %li", i);
    
    i = 3 * 5;
    NSLog(@"i: %li", i);
    
    i = -3 * 5;
    NSLog(@"i: %li", i);
    
    i = 10 / 5;
    NSLog(@"i: %li", i);
    
    i = 10 / 3;
    NSLog(@"i: %li", i);
    
    i = -3 / -5;
    NSLog(@"i: %li", i);
    
    i = 3 % 5;
    NSLog(@"i: %li", i);
    
    i = 13 % 5;
    NSLog(@"i: %li", i);
    
    i = 42 % 26;
    NSLog(@"i: %li", i);
    
    
    NSInteger a = 0;
    NSInteger b = 0;
    NSInteger c = a + b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    a = 3;
    b = 5;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a + b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a - b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a * b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a / b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = pow(a, b);
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    
    
    CGFloat d = 0.0;
    NSLog(@"d: %f", d);
    
    d = 1 + 2;
    NSLog(@"d: %f", d);
    
    d = 1 + 2.5;
    NSLog(@"d: %f", d);
    
    d = 10 - 1.11;
    NSLog(@"d: %f", d);
    
    d = pow(3.0, 5.0);
    NSLog(@"d: %f", d);
    
    d = sqrt(81);
    NSLog(@"d: %f", d);
    
    d = sqrt(1.618);
    NSLog(@"d: %f", d);
    
    CGFloat e = 3.3;
    CGFloat f = 5.5;
    CGFloat g = e * f;
    NSLog(@"e: %f, f: %f, g: %f", e, f, g);
    
    
    
    NSUInteger u = 1;
    NSLog(@"u: %lu", u);
    
    u = 2 + 3;
    NSLog(@"u: %lu", u);
    
    u = 3 * 5;
    NSLog(@"u: %lu", u);
    
    u = -1;
    NSLog(@"u: %lu", u);
    
    u = 8 - 10;
    NSLog(@"u: %lu", u);
    
    return YES;
}

@end
