# frozen_string_literal: true

class Position
  attr_reader :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end
end
