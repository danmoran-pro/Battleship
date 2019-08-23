require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'

class BoardTest < Minitest::Test
  def setup
    @board = Board.new

  end

  def test_board_exists
    assert_instance_of Board, @board
  end

  def test_board_has_cells
    assert_equal ["A1" => Cell.new("A1")], @board.cells.first
  end
end
