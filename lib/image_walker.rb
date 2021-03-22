# frozen_string_literal: true

class ImageWalker
  attr_reader :radar, :invader

  def initialize(radar, invader)
    @radar = radar
    @invader = invader
  end

  def walk
    [].tap do |positions|
      (0..(radar.rows_size - invader.rows_size)).each do |iy|
        bottom_boundary = iy + (invader.rows_size - 1)

        (0..(radar.cols_size - invader.cols_size)).each do |ix|
          right_boundary = ix + (invader.cols_size - 1)

          radar_segment = radar.rows[iy..bottom_boundary].map { |col| col[ix..right_boundary] }
          rows = Coordinates.new(iy..bottom_boundary)
          columns = Coordinates.new(ix..right_boundary)

          new_position = Position.new(rows, columns)
          positions << new_position if match?(radar_segment)
        end
      end
    end
  end

  private

  def match?(radar_segment)
    rows_difference(radar_segment) <= max_error_tolerance
  end

  def rows_difference(radar_segment)
    rows_difference = (0..invader.rows_size - 1).map do |el|
      difference(radar_segment[el], invader.rows[el])
    end
    rows_difference.inject(&:+)
  end

  def difference(arr1, arr2)
    diff = arr1.each_with_index.map do |el, ix|
      el != arr2[ix] ? nil : el
    end

    diff.filter(&:!).size
  end

  def max_error_tolerance
    @max_error_tolerance ||= (invader.size / 3) - min_error_tolerance
  end

  def min_error_tolerance
    @min_error_tolerance ||= invader.rows_size
  end
end
