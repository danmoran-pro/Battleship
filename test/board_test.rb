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

  end

  def test_board_exists
    assert_instance_of Board, @board
  end

  def test_axes
    assert_equal ("A".."E").to_a, @board.x_axis
    assert_equal (1..5).to_a, @board.y_axis

  end

  def test_cells_are_created
    @board.create_cells
    binding.pry
    assert_equal 25, @board.cells.count
  end

end
