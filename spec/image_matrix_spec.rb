# frozen_string_literal: true

require "spec_helper"
require "image_matrix"

RSpec.describe "ImageMatrix" do
  describe "instance methods" do
    ascii = Array.new(8) { |_ix| Array.new(8) { |_iy| '-' } }.map { |a| "#{a.join}\n" }.join
    image_matrix = ImageMatrix.new(ascii)

    it "returns rows for the ascii image" do
      expect(image_matrix.rows).to be_a_kind_of(Array)
      expect(image_matrix.rows).not_to be_empty
    end

    it "returns columns for the ascii image" do
      expect(image_matrix.columns).to be_a_kind_of(Array)
      expect(image_matrix.columns).not_to be_empty
    end

    it "returns rows size" do
      expect(image_matrix.rows_size).to eq(8)
    end

    it "returns columns size" do
      expect(image_matrix.columns_size).to eq(8)
    end

    it "returns image size; rows * columns" do
      expect(image_matrix.size).to eq(64)
    end

    describe 'alias methods' do
      it "`cols` returns columns for the ascii image" do
        expect(image_matrix.cols).to be_a_kind_of(Array)
        expect(image_matrix.cols).not_to be_empty
      end

      it "`cols` returns columns size" do
        expect(image_matrix.cols_size).to eq(8)
      end
    end
  end
end
