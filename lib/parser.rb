# frozen_string_literal: true

class Parser
  class << self
    # Returns an array of half-open ranges read from a file
    def ranges_from_file(filename)
      IO.readlines(filename).map do |line|
        parse_range_line(line)
      end
    end

    # Yields a stream of numbers read from STDIN
    def each_number_from_stdin
      ARGF.each_line do |line|
        number = Float(line)
        yield(number)
      end
    end

    private

    def parse_range_line(line)
      first, last = line.chomp.split.map {|number| Float(number) }
      first...last
    end
  end
end
