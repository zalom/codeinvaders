# frozen_string_literal: true

require "spec_helper"
require "coordinate"

RSpec.describe "Coordinate" do
  describe "instance methods" do
    it "returns the start of the range" do
      expect(Coordinate.new(0..7).start).to eq(0)
    end

    it "returns the end of the range" do
      expect(Coordinate.new(1..8).end).to eq(8)
    end

    it "returns the range" do
      range = 1..9
      expect(Coordinate.new(range).range).to eq(range)
    end
  end
end
