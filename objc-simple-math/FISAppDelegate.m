//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     
     * Write your code here.
     
     */
    
    // A. Operations With Values
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
    
    NSLog(@" ");
    // B. Operations With Variables
    NSInteger a = 0;
    NSInteger b = 0;
    NSInteger c = a + b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    a = 17;
    b = 29;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a + b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a - b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a * b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    c = a / b;
    NSLog(@"a: %li, b: %li, c: %li", a, b, c);
    
    NSLog(@" ");
    // C. Using Floats
    CGFloat f = 0.0;
    NSLog(@"f: %f", f);
    
    f = 17 / 29;
    NSLog(@"f: %f", f);
    
    f = 17 / 29.0;
    NSLog(@"f: %f", f);
    
    f = 1 + 2.5;
    NSLog(@"f: %f", f);
    
    f = 10 - 1.11;
    NSLog(@"f: %f", f);
    
    f = 0.1667 * 6;
    NSLog(@"f: %f", f);

    f = 3 / 7;
    NSLog(@"f: %f", f);
    
    f = 3 / 7.0;
    NSLog(@"f: %f", f);
    
    // Advanced
    f = M_PI;
    NSLog(@"f: %f", f);
    NSLog(@"f: %.50f", f);
    
    f = sqrt(2.0);
    NSLog(@"f: %.54f", f);
    
    f = M_SQRT2;
    NSLog(@"f: %.54f", f);
    
    f = sqrt(81);
    NSLog(@"f: %f", f);
    
    f = pow(3.0, 3.0);
    NSLog(@"f: %f", f);
    
    f = exp2(64);
    NSLog(@"f: %f", f);
    
    
    
    NSLog(@" ");
    // D. Using Unsigned Integers
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
    
    NSLog(@" ");
    // E. Capturing Comparisons Into BOOLs
    BOOL isEightEqualToEight = 8 == 8;
    NSLog(@"8 == 8: %d", isEightEqualToEight);
    BOOL isEightEqualToSeven = 8 == 7;
    NSLog(@"8 == 7: %d", isEightEqualToSeven);
    
    BOOL isEightNotEqualToSeven = 8 != 7;
    NSLog(@"8 != 7: %d", isEightNotEqualToSeven);
    BOOL isEightNotEqualToEight = 8 != 8;
    NSLog(@"8 != 8: %d", isEightNotEqualToEight);
    
    BOOL isSixLessThanSeven = 6 < 7;
    NSLog(@"6 < 7: %d", isSixLessThanSeven);
    BOOL isSixLessThanFive = 6 < 5;
    NSLog(@"6 < 5: %d", isSixLessThanFive);
    BOOL isSixLessThanSix = 6 < 6;
    NSLog(@"6 < 6: %d", isSixLessThanSix);
    BOOL isSixLessThanOrEqualToSix = 6 <= 6;
    NSLog(@"6 <= 6: %d", isSixLessThanOrEqualToSix);
    
    BOOL isNineGreaterThanEight = 9 > 8;
    NSLog(@"9 > 8: %d", isNineGreaterThanEight);
    BOOL isNineGreaterThanNine = 9 > 9;
    NSLog(@"9 > 9: %d", isNineGreaterThanNine);
    BOOL isNineGreaterThanOrEqualToNine = 9 >= 9;
    NSLog(@"9 >= 9: %d", isNineGreaterThanOrEqualToNine);
    
    BOOL isAEqualToB = a == c;
    NSLog(@"a == c: %d", isAEqualToB);
    BOOL isFGreaterThanC = f > c;
    NSLog(@"f > c: %d", isFGreaterThanC);
    BOOL isFLessThanOrEqualToU = f <= u;
    NSLog(@"f <= u: %d", isFLessThanOrEqualToU);
    
    NSLog(@" ");
    // F. Operation Precedence
    NSInteger x = 2 + 3 * 5;
    NSLog(@"x: %li", x);
    x = (2 + 3) * 5;
    NSLog(@"x: %li", x);
    
    NSInteger y = 5 - 8 * 4 + 2;
    NSLog(@"y: %li", y);
    y = 5 - 8 * (4 + 2);
    NSLog(@"y: %li", y);
    
    CGFloat z = 8 - 3 / 7;
    NSLog(@"z: %f", z);
    z = 8 - 3 / 7.0;
    NSLog(@"z: %f", z);
    z = (8 - 3) / 7.0;
    NSLog(@"z: %f", z);
    
    
    
    
    
    // do not alter
    return YES;  //
    ///////////////
}

@end
