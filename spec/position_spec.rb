# frozen_string_literal: true

require "spec_helper"
require "position"

RSpec.describe "Position" do
  describe "instance values" do
    it "returns the default type if arguments are not of type Coordinate" do
      position = Position.new(1..8, 8..16)
      expect(position.rows).to be_a_kind_of(Coordinate)
      expect(position.columns).to be_a_kind_of(Coordinate)
    end

    it "returns the default values if arguments are not of type Coordinate" do
      position = Position.new(1..8, 8..16)
      expect(position.rows.range).to eq(0..7)
      expect(position.columns.range).to eq(0..7)
    end

    it "returns the proper values if arguments are of type Coordinate" do
      position = Position.new(Coordinate.new(1..8), Coordinate.new(8..16))
      expect(position.rows.range).to eq(1..8)
      expect(position.columns.range).to eq(8..16)
    end
  end
end
