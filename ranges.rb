#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative './lib/parser'
require_relative './lib/range_counter'

filename = ARGV.shift

ranges = Parser.ranges_from_file(filename)
counter = RangeCounter.new(ranges)

Parser.each_number_from_stdin do |number|
  matching_range_count = counter.count_intersections(number)
  puts(matching_range_count)
end
