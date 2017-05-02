# frozen_string_literal: true

require 'rspec'
require_relative '../lib/range_counter'

RSpec.describe RangeCounter do
  describe 'count_intersections' do
    it 'correctly counts number of matching ranges' do
      counter = described_class.new([-3...4, 0...3, 5...7, 2...6, 1...10])

      expect(counter.count_intersections(-1)).to eq(1)
      expect(counter.count_intersections(1)).to eq(3)
      expect(counter.count_intersections(10)).to eq(0)
      expect(counter.count_intersections(9.9999)).to eq(1)
      expect(counter.count_intersections(100)).to eq(0)
    end
  end

  it 'counts duplicate ranges twice' do
    counter = described_class.new([-3...4, -3...4])

    expect(counter.count_intersections(1)).to eq(2)
  end
end
