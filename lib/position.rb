# frozen_string_literal: true

class Position
  attr_reader :rows, :columns

  def initialize(rows, columns)
    @rows = type_check!(rows)
    @columns = type_check!(columns)
  end

  private

  def type_check!(obj)
    obj.is_a?(Coordinate) ? obj : Coordinate.new(0..7)
  end
end
