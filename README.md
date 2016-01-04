# Code-Along: Simple Math

## Objectives

1. Define and print an `NSInteger` variable.
2. Use an `NSInteger` variable to capture and print the result of several simple calculations.
3. Use an `NSInteger` variable to capture and print the result of using other variables in calculations.
4. Define an `NSUInteger` and produce the Xcode error that appears when an unsigned integer is assigned a negative value.
5. Use `BOOL`s to capture and print value comparisons.
6. Use parentheses to override operation precedence and see how it affects the result of a calculation.
7. Use `CGFloat`s to hold decimal values.
8. Capture the result of an integer-only division into a `CGFloat` variable to see how the result is truncated.

### Advanced

1. Use a `CGFloat` variable to print mathematical values stored in the `math.h` C library.
2. Use a `CGFloat` variable to capture and print the result of calling a few mathematical C-functions from the `math.h` C library.

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

3. Reassign `i` to the result of adding `1` and `1` and print `i` to the console again:
  * `i = 1 + 1;`
  * Use `⌘` `V` to paste your `NSLog()` a second time after the reassignment of `i`.
  * Run the program with `⌘` `R` to see that `i: 2` prints to the console.

4. Reassign `i` again to the result of various simple calculations. Paste in a new copy of the `NSLog()` after each reassignment of `i` so you can see each change in its value in the debug console.

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
i: 2   // first reassignment
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

2. Reassign `a` to equal `17` and `b` to equal `29`.
  * `a = 17;`
  * `b = 29;`

3. Copy the `NSLog()` you just wrote to clipboard with `⌘` `C` and use `⌘` `V` to paste a copy of following each reassignment of any of these variables.
  * Run the program with `⌘` `R` to see that `a: 17, b: 29, c: 0` prints to the console.
  * Notice that `c` still holds the previous result of adding `a` and `b`. *It did not automatically update when `a` and `b` were reassigned.*

4. Reassign `c` to equal the sum of `a` and `b` and print the variables again:
  * `c = a + b;`
  * Run the program with `⌘` `R` to see that `a: 17, b: 29, c: 46` prints to the console.

5. Reassign `c` again to equal the difference, product, and quotient of `a` and `b`. Print the three variables to the console after each one:

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

### C. Using Unsigned Integers

1 — Declare a new `NSUInteger` variable called `u` and set it equal to `1`. Then print it out using an `NSLog()` with the `%lu` format specifier:

  * `NSUInteger u = 1;`
  * `NSLog(@"u: %lu", u);`
  * Run the program with `⌘` `R` to see that `u: 1` prints to the console.

2 — Reassign `u` to the results of simple calculations:

  * `u = 2 + 3;`
  * `NSLog(@"u: %lu", u);` will print `u: 5`.
  * `u = 2 * 3;`
  * `NSLog(@"u: %lu", u);` will print `u: 6`.

3 — Now reassign `u` to `-1` (negative one).

  * `u = -1;`
  * You should see a warning like this pop up:

![](https://curriculum-content.s3.amazonaws.com/ios/ios-objc-fundamentals-unit/nsuinteger_implicit_conversion_changes_signedness_value.png)

  * Now, run the program with `⌘` `R`, you should see `u: 18446744073709551615` print from this last `NSLog()`. Leave the warning in place and continue.

4 — Now reassign `u` to the result of calculation that will be a negative value, such as `8 - 10`:

  * `u = 8 - 10;`
  * You should see a similar warning pop up:

![](https://curriculum-content.s3.amazonaws.com/ios/ios-objc-fundamentals-unit/nsuinteger_implicit_conversion_changes_signedness_result.png)

  * Run the program with `⌘` `R`, you should see `u: 18446744073709551614`

At the end of this code-along your console should print something like:

```
u: 1
u: 5
u: 6
u: 18446744073709551615
u: 18446744073709551614
```

For the rest of this lab you may either continue with the warnings lit, or comment-out the offending lines of code to hide the warnings.

### D. Capturing And Printing Comparisons

In this section we're going to start by capturing the results of a few comparisons into `BOOL`s, and then `NSLog()`ing the `BOOL`s.

1. Declare a `BOOL` variable called `threeIsEqualToThree` and set it equal to result of comparing `3` with `3` using the is-equal-to comparator (`==`), then `NSLog()` the variable:
  * `BOOL threeIsEqualToThree = 3 == 3;`
  * `NSLog(@"3 == 3: %d", threeIsEqualToThree);`
  * This should print: `3 == 3: 1`, meaning "yes".

2. Declare a new `BOOL` variable called `fourIsEqualToThree` and set it equal to the result of comparing `3` and `4` using the is-equal-to comparator (`==`), then `NSLog()` the variable:
  * `BOOL fourIsEqualToThree = 4 == 3;`
  * `NSLog(@"4 == 3: %d", fourIsEqualToThree);`
  * This should print: `4 == 3: 0`, meaning "no".

3. Declare a new `BOOL` variable called `fiveIsNotEqualToThree` and set it equal to the result of comparing `5` and `3` using the is-not-equal-to comparator (`!=`), then `NSLog()` the variable:
  * `BOOL fiveIsNotEqualToThree = 5 != 3;`
  * `NSLog(@"5 != 3: %d", fiveIsNotEqualToThree);`
  * This should print: `5 != 3: 1`, meaning "yes".

4. Declare a fourth `BOOL` variable called `sixIsNotEqualToSix` and set it equal to the result of comparing `6` and `6` using the is-not-equal-to comparator (`!=`), then `NSLog()` the variable.
  * `BOOL sixIsNotEqualToSix = 6 != 6;`
  * `NSLog(@"6 != 6: %d", sixIsNotEqualToSix);`
  * This should print: `6 != 6: 0`, meaning "no".

5. Now print these comparisons as format arguments directly into `NSLog()`s:
  * `NSLog(@"3 == 3: %d", 3 == 3);` which will print: `3 == 3: 1`,
  * `NSLog(@"4 == 3: %d", 4 == 3);` which will print: `4 == 3: 0`,
  * `NSLog(@"5 != 3: %d", 5 != 3);` which will print: `5 != 3: 1`,
  * `NSLog(@"6 != 6: %d", 6 != 6);` which will print: `6 != 6: 0`.

6. Use this format to practice with the less-than (`<`) and less-than-or-equal-to (`<=`) comparators:

  * `NSLog(@"7 < 8: %d", 7 < 8);` which will print: `7 < 8: 1`,
  * `NSLog(@"8 < 5: %d", 8 < 5);` which will print: `8 < 5: 0`,
  * `NSLog(@"9 < 9: %d", 9 < 9);` which will print: `9 < 9: 0`,
  * `NSLog(@"10 <= 10: %d", 10 <= 10);` which will print: `10 <= 10:  1`.

7. Use this format to practice with the greater-than (`>`) and greater-than-or-equal-to (`>=`) comparators:

  * `NSLog(@"11 > 8: %d", 11 > 8);` which will print: `11 > 8: 1`,
  * `NSLog(@"12 > 15: %d", 12 > 15);` which will print: `12 > 15: 0`,
  * `NSLog(@"13 > 13: %d", 13 > 13);` which will print: `13 > 13: 0`,
  * `NSLog(@"14 >= 14: %d", 14 >= 14);` which will print: `14 >= 14: 1`.

8. Write a series of three `BOOL`s to compare the variables `a` and `b` from Code-Along A. Use the is-equal-to comparator (`==`), the greater-than comparator (`>`), and the less-than comparator (`<`). You can call the variables `aIsEqualToB`, `aIsGreaterThanB`, and `aIsLessThanB` respectively:

```objc  
BOOL aIsEqualToB = a == b;
BOOL aIsGreaterThanB = a > b;
BOOL aIsLessThanB = a < b;
```

Then print each `BOOL` in a series of `NSLog()`s:

```objc
NSLog(@"a == b: %d", aIsEqualToB);
NSLog(@"a > b: %d", aIsGreaterThanB);
NSLog(@"a < b: %d", aIsLessThanB);
```

This should print: 

```
a == b: 0
a > b: 0
a < b: 1
```

At the end if this code-along, your console might read:

```
3 == 3: 1
4 == 3: 0
5 != 3: 1
6 != 6: 0
3 == 3: 1
4 == 3: 0
5 != 3: 1
6 != 6: 0
7 < 8: 1
8 < 5: 0
9 < 9: 0
10 <= 10: 1
11 > 8: 1
12 > 15: 0
13 > 13: 0
14 >= 14: 1
a == b: 0
a > b: 0
a < b: 1
```

### E. Operation Precedence

1. Declare an `NSInteger` variable called `x` and set it equal to the result of an equation that mixes operators with different precedences, such as `2 + 3 * 5`, and `NSLog()` the value of `x`:
  * `NSInteger x = 2 + 3 * 5;`
  * `NSLog(@"x: %li", x);`
  * This should print: `x: 17`.

2. Now override a lower-precedence operation by using parentheses `(` `)` and `NSLog()` the value of `x` again to see how the override affects the result:
  * `x = (2 + 3) * 5;`
  * `NSLog(@"x: %li", x);`
  * This should print: `x: 25`.

3. Declare another `NSInteger` variable called `y` and set it equal to the result of another equation that mixes operators with different precedences, such as `5 - 8 * 4 + 2`, and `NSLog()` the value of `y`:
  * `NSInteger y = 5 - 8 * 4 + 2;`
  * `NSLog(@"y: %li", y);`
  * This should print: `y: -25`.

4. Now override a lower-precedence operation by using parentheses `(` `)` and `NSLog()` the value of `y` again to see how the override affects the result:
  * `y = 5 - 8 * (4 + 2);`
  * `NSLog(@"y: %li", y);`
  * This should print: `y: -43`.

At the end of the code-along, your console should print out something like:

```
x: 17
x: 25
y: -25
y: -43
```

### F. Using Floats

1. Declare a new `CGFloat` variable called `f` and set it equal to `0.0`:
  * `CGFloat f = 0.0;`

2. Write an `NSLog()` that uses the `%f` float format specifier to print `f` to the console along with its variable name:
  * `NSLog(@"f: %f", f);`
  * Run the program with `⌘` `R` to see that `f: 0.000000` prints to the console.

3. Reassign `f` to equal the the quotient of dividing `17` by `29`. Copy and paste your `NSLog()` after the reassignment to print the new value to the console:
  * `f = 17 / 29;`
  * Run the program with `⌘` `R` to see that `f: 0.000000` still prints to the console. The division operator is returning an integer value as the result of the operation.

4. Reassign `f` with same equation but write at least one of the values as float by using a decimal point and zero:
  * `f = 17 / 29.0;`
  * Paste another `NSLog()` and run the program again. You should see `f: 0.586207` printed to the console.

5. Reassign `f` to equal a few more simple calculations. Any time you use the division operator (`/`), define at least one operand as a float value.

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

1. Reassign `f` to equal the definition of *pi* `M_PI`, then print `f` again:
  * `f = M_PI;`
  * You should see `f: 3.141593` print to the console.

2. But how precise is that definition of *pi*? The default format specifier rounds it to the sixth decimal place. Try using the long-form float format specifier (`%.nf`) to see how many decimals of *pi* that `math.h` knows:
  * `NSLog(@"f: %.12f", f);`, though it's more than twelve.

3. Use the `math.h` C-function `sqrt(x)` to calculate the square root of `2`.
  * `f = sqrt(2);`
  * How precise is this calculation?

4. Now compare the result of calculating the square root of `2` with `math.h`'s definition of it `M_SQRT2`:
  * `f = M_SQRT2;`
  * How does the definition compare to the calculation?

5. Use the `sqrt(x)` function to find the square root of 81.

6. Now use the `pow(x, y)` function to find the cube of 3.

7. Finally, use the `exp2(x)` function to find the highest value of a signed 64-bit integer. **Hint:** *This is equal to* 2^63 - 1.



<a href='https://learn.co/lessons/objc-simple-math' data-visibility='hidden'>View this lesson on Learn.co</a>
