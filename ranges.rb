#!/usr/bin/env ruby

def read_ranges_file(filename)
  IO.readlines(filename)
end

def count_ranges(num)
  ranges = read_ranges_file(@filename)
  count = 0
  ranges.each do |range|
    lower, higher = range.split
    if Float(lower) <= num && num < Float(higher)
      count += 1
    end
  end
  puts(count)
end

def process_line(line)
  if line != ''
    num = Float(line)
    count_ranges(num)
  end
end

def main()
  @filename = ARGV.shift
  ARGF.each do |line|
    process_line(line)
  end
end

if __FILE__ == $0
  main()
end
