#!/usr/bin/env ruby
# frozen_string_literal: true

def read_ranges_file(filename)
  IO.readlines(filename)
end

def count_ranges(num)
  ranges = read_ranges_file(@filename)
  count = 0
  ranges.each do |range|
    lower, higher = range.split
    count += 1 if Float(lower) <= num && num < Float(higher)
  end
  puts(count)
end

def process_line(line)
  if line != ''
    num = Float(line)
    count_ranges(num)
  end
end

def main
  @filename = ARGV.shift
  ARGF.each do |line|
    process_line(line)
  end
end

main if __FILE__ == $PROGRAM_NAME
