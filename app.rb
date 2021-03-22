#!/usr/bin/env ruby

# frozen_string_literal: true

require './lib/initial_data'
require './lib/position'
require './lib/coordinates'
require './lib/image_matrix'
require './lib/image_walker'
require './lib/services/output_service'
require './lib/code_invaders'

CodeInvaders.run

# positions_sorted = invader2_positions.sort_by { |e| e[:columns].start && e[:rows].start }
#
# remap = positions_sorted.map { |has| has.transform_values { |position| position.range.to_a } }
# [].tap do |filtered|
#   remap.each do |pos|
#     remap.each do |posc|
#       filtered << posc if pos[:x].difference(posc[:x]).size == 8
#     end
#   end
# end
# remap.sort_by { |k, v| k[:y] }
#
# invader1_positions.map do |position|
#   position if uncovered?(invader1_positions, position)
# end
