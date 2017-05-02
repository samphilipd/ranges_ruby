# frozen_string_literal: true

require "interval_tree"

class RangeCounter
  # Expects ranges as an array of half-open ranges in no particular order like:
  # [0...1, 1...4]
  def initialize(ranges)
    @tree = IntervalTree::Tree.new(ranges)
  end

  def count_intersections(n)
    @tree.search(n, unique: false).size
  end
end
