# Tallarium Interview Challenge - Ranges

# Intro

The original algorithm was reimplemented in Ruby, see: `naiive_ranges.rb`.

An optimised algorithm was implemented in `ranges.rb`. This uses modular code and has unit testing.

# Running

`./ranges.rb`

### Integration tests

`bundle exec ./test.sh`

### Unit tests

`bundle exec rspec`

# Complexity Analysis

### Naiive implementation

The run-time complexity of the naiive implementation is:

O(n * m) in time and O(n) in memory where `n` is the range count and `m` is the input number count.

You could make it O(1) in memory by streaming the range file every time instead of loading it. But since the range count is guaranteed to never exceed 1 Million, this is unnecessary.

The time complexity is suboptimal but since the ranges are arbitrary and can overlap the usual suspect (binary-tree search) cannot help us here.

There is a **non-obvious** way to make it more efficient, and that is to use an [Interval tree](https://en.wikipedia.org/wiki/Interval_tree).

### Optimized implemenation

Interval trees offer a better approach for very large M.

Tree construction time complexity: O(n log(n))
Lookup time complexity: O(log(n) + m)
Memory: O(n)

An existing Augmented Interval Tree library for Ruby was used, with some modifications to make it return multiple identical values in the case of more than one match.
