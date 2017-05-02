# Tallarium Interview Challenge - Ranges

## Description

The program `ranges.{js,py}` is called with a single argument, which is the name of a file.
It reads all subsequent input from standard input, (until the EOF character is passed in)
and writes to standard output. (Before running the js version you need to run `npm install`).

```bash
./ranges.{js,py} ranges_file
```

The `ranges_file` whose name is passed to the program contains a
list of number pairs, representing closed ranges. Each line contains
exactly one half-open range [X, Y) represented as "X WHITESPACE Y".
The maximum size of this file is a million entries, it may contain any
number of duplicates (representing distinct instances of the same
range) and may or may not end with a NEWLINE.

The program then reads lines from STDIN, potentially billions of lines,
each line containing a single number P and prints to STDOUT on a new line
a single number N, such that N is the number of half-open ranges (X, Y)
defined in the `ranges_file` containing the number P (P is contained within
a half-open range [X, Y) iff X <= P < Y).

We assume that the numbers X, Y and P are double precision (64-bit) floating
point numbers.

### Examples

We attach two example input fixtures, `fixtures.{1,2}.{ranges,numbers}.txt`,
and their corresponding outputs `fixtures.{1,2}.output.txt`.

We also provide a script to run a simple test suite comparing the output
of running `./ranges.{js,py} fixtures.{x}.ranges.txt < fixtures.{x}.numbers.txt`
to `fixtures.{x}.output.txt`:

```bash
./test.sh
```

The test script picks the first available `ranges*` file to run, so simply delete
the one you don't want.

## Your Tasks

Fork this gist. You can choose to modify one of the existing implementations, or write
a new one in your favourite language. Please make sure only one implementation is
left in your submitted solution (i.e. delete the example files if you're writing it in
another language) and make sure your executable's name matches `ranges*`. Submit your
solution as a gist. If your program requires a build step, please provide instructions.

### Complexity Analysis

What is the run-time complexity of the current implementation(s)?
Are there any obvious inefficiencies?

### Optimized Algorithm

Can you think of an algorithm whose run-time is asymptotically better than the one provided.
Implement it and analyze its complexity!

Please make sure that the run-time complexity of your algorithm does not depend on its output.

Make sure you write clear, well-structured code as it will be used to assess your performance,
as well as the correctness and efficiency of your algorithm and its correct complexity analysis.

### Testing (for bonus points)

Can you think of some other useful test cases one should include in a unit testing suite?
Explain your choice.

### Modularisation (for extra bonus points)

How would you split up your solution into multiple files / classes to make it more modular?
If you have time to spare, do it!
