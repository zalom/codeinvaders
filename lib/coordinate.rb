# frozen_string_literal: true

class Coordinate
  attr_reader :range

  def initialize(range)
    @range = range
  end

  def start
    range.first
  end

  def end
    range.last
  end
end
