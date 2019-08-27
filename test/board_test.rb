require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new
    @cruiser = Ship.new("Cruiser", 3)
    @submarine = Ship.new("Submarine", 2)

  end

  def test_board_exists
    assert_instance_of Board, @board
  end

  def test_axes
    assert_equal ("A".."D").to_a, @board.x_axis
    assert_equal (1..4).to_a, @board.y_axis

  end

  def test_cells_are_created
    @board.create_cells
    assert_equal 16, @board.cells.count
  end

  def test_vaild_coordinates
    @board.create_cells_to_hash
    assert_equal true, @board.valid_coordinate?("A1")
    assert_equal true, @board.valid_coordinate?("D4")
    assert_equal false, @board.valid_coordinate?("A5")
    assert_equal false, @board.valid_coordinate?("A22")
  end

  def test_valid_board_placement
    @board.create_cells_to_hash
    assert_equal false, @board.valid_placement?(@cruiser, ["A1", "A2"])
    assert_equal false, @board.valid_placement?(@submarine, ["A2", "A3", "A4"])
  end
end
