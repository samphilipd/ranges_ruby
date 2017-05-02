# frozen_string_literal: true

require 'rspec'
require_relative '../lib/parser'

RSpec.describe Parser do
  describe 'ranges_from_file' do
    it 'reads file into array of intervals' do
      fixture_file = File.join(File.dirname(__FILE__), '..', 'fixtures.1.ranges.txt')
      intervals = described_class.ranges_from_file(fixture_file)
      expect(intervals).to match_array [0.0...12.0, 106.0...122.0, 123.0...124.0, 11.0...33.0, 33.0...34.0]
    end
  end
end
