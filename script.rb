# frozen_string_literal: true

INVADER1 = <<~INVADER_1
  --o-----o--
  ---o---o---
  --ooooooo--
  -oo-ooo-oo-
  ooooooooooo
  o-ooooooo-o
  o-o-----o-o
  ---oo-oo---
INVADER_1

INVADER2 = <<~INVADER_2
  ---oo---
  --oooo--
  -oooooo-
  oo-oo-oo
  oooooooo
  --o--o--
  -o-oo-o-
  o-o--o-o
INVADER_2

[
  %w[- - o - - - - - o - -],
  %w[- - - - - - - o - - -],
  %w[- - o o o o - o o - -],
  %w[- - - - o o o - o o -],
  %w[o - - o o o o o o - o],
  %w[o - o - o o o o o - o],
  %w[o - o - - - - - o - o],
  %w[- - - o o - o o - - -]
].freeze

[
  %w[- - - o o - - -],
  %w[- - o o o - o -],
  %w[- - o o o o o -],
  %w[o o - - o - o o],
  %w[o o - o o o o o],
  %w[- - - - - o - -],
  %w[o o - o o - o -],
  %w[o - o - - o o o]
].freeze

RADAR = <<~RADAR_S
  ----o--oo----o--ooo--ooo--o------o---oo-o----oo---o--o---------o----o------o-------------o--o--o--o-
  --o-o-----oooooooo-oooooo---o---o----o------ooo-o---o--o----o------o--o---ooo-----o--oo-o------o----
  --o--------oo-ooo-oo-oo-oo-----O------------ooooo-----oo----o------o---o--o--o-o-o------o----o-o-o--
  -------o--oooooo--o-oo-o--o-o-----oo--o-o-oo--o-oo-oo-o--------o-----o------o-ooooo---o--o--o-------
  ------o---o-ooo-ooo----o-----oo-------o---oo-ooooo-o------o----o--------o-oo--ooo-oo-------------o-o
  -o--o-----o-o---o-ooooo-o-------oo---o---------o-----o-oo-----------oo----ooooooo-ooo-oo------------
  o-------------ooooo-o--o--o--o-------o--o-oo-oo-o-o-o----oo------------o--oooo--ooo-o----o-----o--o-
  --o-------------------------oo---------oo-o-o--ooo----oo----o--o--o----o--o-o-----o-o------o-o------
  -------------------o----------o------o--o------o--------o--------o--oo-o-----oo-oo---o--o---o-----oo
  ----------o----------o---o--------------o--o----o--o-o------------oo------o--o-o---o-----o----------
  ------o----o-o---o-----o-o---o-----oo-o--------o---------------------------------o-o-o--o-----------
  ---------------o-------o-----o-------o-------------------o-----o---------o-o-------------o-------oo-
  -o--o-------------o-o-----o--o--o--oo-------------o----ooo----o-------------o----------oo----o---o-o
  -o--o-------------o----oo------o--o-------o--o-----o-----o----o-----o--o----o--oo-----------o-------
  -o-----oo-------o------o----o----------o--o----o-----o-----o-------o-----------o---o-o--oooooo-----o
  -o--------o-----o-----o---------oo----oo---o-o---------o---o--oooo-oo--o-------o------oo--oo--o-----
  ------------o---------o---------o----oooo-------------oo-oo-----ooo-oo-----o-------o-oo-oooooooo---o
  ----------------------o------------oooooooo---o-----o-------o--oooooo-o------------o-o-ooooooo-o----
  ------------o------o---o---o-------oo-oo--o--o---------o--o-o-o-ooooo-o--------------oo-o----o-oo-o-
  ---o-o----------oo-------oo----o----oooooooo-------o----o-o-o-o-----o-o-----o----------ooo-oo--o---o
  -o-o---------o-o---------------o--o--o--ooo---ooo-------o------oo-oo------------o--------o--o-o--o--
  -------oo---------------------------o-oo----------o------o-o-------o-----o----o-----o-oo-o-----o---o
  ---o--------o-----o-------o-oo-----oo--oo-o----oo----------o--o---oo------oo----o-----o-------o-----
  ---o--ooo-o---------o-o----o------------o---------o----o--o-------o----o--------o----------------oo-
  ---o------o----------------o----o------o------o---oo-----------o-------------o----------oo---------o
  --oo---------------o--o------o---o-----o--o-------------o------o-------o-----o-----o----o------o--o-
  -o-------o----------o-o-o-------o-----o--o-o-----------o-oo-----------o------o---------o-----o-o----
  ----------o----o-------o----o--o------o------------o---o---------------oo----o-----ooo--------------
  ----o--------oo----o-o----o--o------ooo----o-oooo---o--o-oo--------o-oo-----o-o---o-o--o-----oo-----
  ------o--------o-ooooo----o---o--o-----o---------------o-o-------o-----o----------------------------
  o-------oo----o--oooooo-o---o--o------oooo----------o-oo-------o---o----------o------oo-------------
  -o---o----------o--oo-oo-o---o-----o-o-----------------------oo--o------o------o--------------------
  -----oo-o-o-o---ooooooooo----o----o--------o--o---oo---o------------o----------o-o---o------o-o--oo-
  ------o------o---ooo-o---------------------------o--o---o---o----o--o-------o-----o------o----o----o
  -------o----------ooo-o-----o----o---o--o-oo--o--o-o--o------o--o-oo---ooo------------------------o-
  -o-------o------o-o--ooo--o---o---oo-----o----o-------------o----o-ooo-o------o--o-o------o-o-------
  ---oo--o---o-o---------o---o--------------o--o-----o-------o-----o--o---o-oo--------o----o----o-----
  o------o----oo-o-----------oo--o---o--------o-o------o-------o-o------o-oo---------o-----oo---------
  ----o--o---o-o-----------o---o------------o-------o----o--o--o--o-o---------------o-----------------
  -------oo--o-o-----o-----o----o-o--o----------------------o-------o------o----oo----ooo---------o---
  o-----oo-------------------o--o-----o-----------o------o-------o----o-----------o----------------o--
  --o---o-------o------------o--------------------o----o--o-------------oo---o---------oo--------o----
  --o--------o---------o------------o------o-------o------------o-------o---o---------ooooo-----------
  ------o--------------o-o-o---------o---o-------o--o-----o-------o-o----------o-----oo-ooo----------o
  --o---------------o----o--oo-------------o---------o-------------------oo---------oo-o-ooo----------
  -o-----------o------ooo----o----------------ooo-----o--------o--o---o-----------o-o-oooooo--------oo
  -o---o-------o---o-oooo-----o-------------------o----oo-----------------o--o--------o--o------o--o--
  -------o---o------oooooo--o----ooo--o--------o-------o----------------------------oo-oo-o--o--------
  o--oo------o-----oo--o-oo------------oo--o------o--o-------------oo----o------------oooo-o------oo--
  -----o----------ooooooooo--------------oo--------------oo-----o-----o-o--o------o----------o----o---
RADAR_S

# This should be a dynamic parameter
SENSITIVITY = 16

# Moving thorugh the radar one invader chunk by one
# radar_arr = RADAR.split("\n").map { |rad| rad.split('') }
# invader1_arr = INVADER1.split("\n").map { |invader| invader.split('') }
# invader2_arr = INVADER2.split("\n").map { |invader| invader.split('') }
# rad_chunk = radar_arr[0].slice(0, 11)
# inv1_chunk = invader1_arr[0]
# inv2_chunk = invader2_arr[0]
#
# p rad_chunk
# puts
# p inv1_chunk
# puts
# p inv2_chunk

# TODO: Find a solution for differences that come from "noise"

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
end

class ImageWalker
  attr_reader :radar, :invader

  def initialize(radar, invader)
    @radar = radar
    @invader = invader
  end

  # rows_range -> 0..invader.rows.size
  # columns_range -> 0..invader.columns.size
  # calculate index position for the above
  def chunk(rows_range, columns_range)
    rows[rows_range].map { |arr| arr[columns_range] }
  end

  def walk
    radar_cols_size = radar.columns.size
    radar_rows_size = radar.rows.size
    invader_rows_size = invader.rows.size
    invader_columns_size = invader.columns.size

    [].tap do |arr|
      (0..(radar_rows_size - invader_rows_size)).each do |iy|
        bottom_boundary = iy + (invader_rows_size - 1)

        (0..(radar_cols_size - invader_columns_size)).each do |ix|
          right_boundary = ix + (invader_columns_size - 1)

          # Image' position in Matrix (top to bottom) ->
          # y_coordinate = iy..bottom_boundary # rows
          # x_coordinate = ix..right_boundary  # columns
          radar_segment = radar.rows[iy..bottom_boundary].map { |col| col[ix..right_boundary] }

          invader_position = { x: Position.new(ix..right_boundary), y: Position.new(iy..bottom_boundary) }
          arr << invader_position if match?(radar_segment, invader)
        end
      end
    end
  end

  def match?(radar_segment, invader)
    invader_segment = invader.rows
    rows_difference = (0..invader_segment.size - 1).map do |el|
      difference(radar_segment[el], invader_segment[el])
    end
    rows_difference.inject(&:+) <= SENSITIVITY
  end

  def difference(arr1, arr2)
    diff = arr1.each_with_index.map do |el, ix|
      el != arr2[ix] ? nil : el
    end

    diff.filter(&:!).size
  end

  def difference2(arr1, arr2)
    [].tap do |arr|
      arr1.zip(arr2).each do |s1, s2|
        arr << s1 if s1 != s2
      end
    end.size
  end
end

class Position
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

invader1 = ImageMatrix.new(INVADER1)
invader2 = ImageMatrix.new(INVADER2)
radar = ImageMatrix.new(RADAR)

image_walker1 = ImageWalker.new(radar, invader1)
image_walker2 = ImageWalker.new(radar, invader2)

positions1 = image_walker1.walk
positions2 = image_walker2.walk

# TODO: Go through all positions and record them in the Matrix
radar.rows[positions2.first[:y].range].map { |col| col[positions2.first[:x].range] }
