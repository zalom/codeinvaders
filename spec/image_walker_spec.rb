# frozen_string_literal: true

require "spec_helper"
require "image_walker"

INVADER = <<~INVADER
  oooo
  oooo
  oooo
  oooo
INVADER

RADAR = <<~RADAR
  -----ooo
  ----oooo
  ----oooo
  ----oooo
  -ooo----
  oooo----
  oooo----
  oooo----
RADAR

RSpec.describe "ImageWalker" do
  describe "instance methods" do
    invader = ImageMatrix.new(INVADER)
    radar = ImageMatrix.new(RADAR)
    image_walker = ImageWalker.new(radar, invader)

    it "#walk returns the array of positions" do
      expect(image_walker.walk).to be_an_kind_of(Array)
    end

    it "#walk returns the array of positions" do
      expect(image_walker.walk.size).to eq(2)
    end
  end
end
