# frozen_string_literal: true

class OutputService
  attr_reader :invaders, :radar

  def initialize(invaders, radar)
    @invaders = invaders
    @radar = radar
  end

  def print_results
    puts results.map(&:join)
  end

  def results
    empty_matrix.tap do |results|
      invaders.each do |invader|
        image_walker = ImageWalker.new(radar, invader)
        invader_positions = image_walker.walk
        record_positions(invader, invader_positions, results)
      end
    end
  end

  private

  def empty_matrix
    @empty_matrix ||= Array.new(radar.rows.size) { |_ix| Array.new(radar.columns.size) { |_iy| '-' } }
  end

  def record_positions(invader, invader_positions, matrix)
    invader_positions.each do |position|
      matrix[position.rows.range].each_with_index do |row, index|
        row[position.columns.range] = invader.rows[index]
      end
    end
  end
end
