# objc-simple-math

## Objectives

## Instructions

Fork and clone this lab.

Open `objc-simple-math.xcodeproj` and navigate to the `FISAppDelegate.m` file. Write your code in the `application:didFinishLaunchingWithOptions:` method **before the `return YES;` statement.**

### A. Operations With Values

1. Declare an `NSInteger` variable called `i` and set its value to `0`:
  * `NSInteger i = 0;`
2. Use an `NSLog()` with the `%li` format specifier to print `i` to the console:
  * `NSLog(@"i: %li", i);`
  * Copy your `NSLog()` to your clipboard with `⌘` `C`.
  * Run the program with `⌘` `R` to see that `i: 0` prints to the console.
3. Redefine `i` to the result of adding `1` and `1` and print `i` to the console again:
  * `i = 1 + 1;`
  * Use `⌘` `C` to paste your `NSLog()` a second time after the redefinition of `i`.
  * Run the program with `⌘` `R` to see that `i: 2` prints to the console.
4. Redefine `i` again to the result of various simple calculations. Paste in a new copy of the `NSLog()` after each redefinition of `i` so you can see each change in its value in the debug console.

You can follow the list below, or play around with your own calculations. Just make sure to use all four basic operators (`+`, `-`, `*`, and `/`):

```
5 + 8
10 - 8
8 - 10
2 * 3
3 * 5
-3 * 5
10 / 5
10 / 3
-3 / -5
```
This series will print:

```
i: 0   // initial definition
i: 2   // first redefinition
i: 13
i: 2
i: -2
i: 6
i: 15
i: -15
i: 2
i: 3
i: 0
```

### B. Operations With Variables

1. Declare three new `NSInteger` variables; `a`, `b`, and `c`; and set `a` and `b` to `0` and set `c` to the sum of `a` and `b` (which will result to `0`). Write a single `NSLog()` that prints each variable's value following its name:
  * `NSInteger a = 0;`
  * `NSInteger b = 0;`
  * `NSInteger c = a + b;`
  * `NSLog(@"a: %li, b: %li, c: %li", a, b, c);`
  * Run the program with `⌘` `R` to see that `a: 0, b: 0, c: 0` prints to the console.
2. Redefine `a` to equal `17` and `b` to equal `29`.
  * `a = 17;`
  * `b = 29;`
3. Copy the `NSLog()` you just wrote to clipboard with `⌘` `C` and use `⌘` `V` to paste a copy of following each redefinition of any of these variables.
  * Run the program with `⌘` `R` to see that `a: 17, b: 29, c: 0` prints to the console.
  * Notice that `c` still holds the previous result of adding `a` and `b`. *It did not automatically update when `a` and `b` were redefined.*
4. Redefine `c` to equal the sum of `a` and `b` and print the variables again:
  * `c = a + b;`
  * Run the program with `⌘` `R` to see that `a: 17, b: 29, c: 46` prints to the console.
5. Redefine `c` again to equal the difference, product, and quotient of `a` and `b`. Print the three variables to the console after each one:

```objc
c = a - b;
c = a * b;
c = a / b;
```
At the end of this section your debug console should print all the following lines:

```
a: 0, b: 0, c: 0
a: 17, b: 29, c: 0
a: 17, b: 29, c: 46
a: 17, b: 29, c: -12
a: 17, b: 29, c: 493
a: 17, b: 29, c: 0    // Since '17 / 26' is less than 1 it truncates to 0
```

### C. Using Floats

1. Declare a new `CGFloat` variable called `f` and set it equal to `0.0`:
  * `CGFloat f = 0.0;`
2. Write an `NSLog()` that uses the `%f` float format specifier to print `f` to the console along with its variable name:
  * `NSLog(@"f: %f", f);`
  * Run the program with `⌘` `R` to see that `f: 0.000000` prints to the console.
3. Redefine `f` to equal the the quotient of dividing `17` by `29`. Copy and paste your `NSLog()` after the redefinition to print the new value to the console:
  * `f = 17 / 29;`
  * Run the program with `⌘` `R` to see that `f: 0.000000` still prints to the console. The division operator is returning an integer value as the result of the operation.
5. Redefine `f` with same equation but write at least one of the values as float by using a decimal point and zero:
  * `f = 17 / 29.0;`
  * Paste another `NSLog()` and run the program again. You should see `f: 0.586207` printed to the console.
4. Redefine `f` to equal a few more simple calculations. Any time you use the division operator (`/`), define at least one operand as a float value.

```objc
1 + 2.5
10 - 1.11
0.1667 * 6
3 / 7
3 / 7.0
```

If you followed these operations you should see the following lines:

```
f: 0.000000
f: 0.000000
f: 0.586207
f: 3.500000
f: 8.890000
f: 1.000200   // result of 0.1667 * 6
f: 0.000000   // result of 3 / 7
f: 0.428571   // result of 3 / 7.0
```

##### Advanced

If you're feeling adventurous, take a quick dip into the `math.h` library defined in the C-language.

1. Redefine `f` to equal the definition of *pi* `M_PI`, then print `f` again:
  * `f = M_PI;`
  * You should see `f: 3.141593` print to the console.
2. But how precise is that definition of *pi*? The default format specifier rounds it to the sixth decimal place. Try using the long-form float format specifier (`%.nf`) to see how many decimals of *pi* that `math.h` knows:
  * `NSLog(@"f: %.12f", f);`, thought it's more than twelve.
3. Use the `math.h` C-function `sqrt(x)` to calculate the square root of `2`.
  * `f = sqrt(2);`
  * How precise is this calculation?
4. Now compare the result of calculating the square root of `2` with `math.h`'s definition of it `M_SQRT2`:
  * `f = M_SQRT2;`
  * How does the definition compare to the calculation?
5. Use the `sqrt(x)` function to find the square root of 81.
6. Now use the `pow(x, y)` function to find the cube of 3.
7. Finally, use the `exp2(x)` function to find the highest value of a 64-bit integer.


