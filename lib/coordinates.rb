# frozen_string_literal: true

class Coordinates
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
