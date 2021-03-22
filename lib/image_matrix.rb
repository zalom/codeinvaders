# frozen_string_literal: true

class ImageMatrix
  attr_reader :image_ascii

  def initialize(image_ascii)
    @image_ascii = image_ascii
  end

  def rows
    @rows ||= image_ascii.split("\n").map { |invader| invader.split('') }
  end

  def columns
    @columns ||= rows.transpose
  end
  alias cols columns

  def size
    rows_size * cols_size
  end

  def columns_size
    columns.size
  end
  alias cols_size columns_size

  def rows_size
    rows.size
  end
end
