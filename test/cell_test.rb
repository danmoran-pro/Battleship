require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'



class CellTest < Minitest::Test

  def setup
    @cell = Cell.new("B4")
    @cruiser = Ship.new("Cruiser", 3)
  end

  def test_it_exists
    assert_instance_of Cell, @cell
  end

  def test_cell_has_coordinate
    assert_equal "B4", @cell.coordinate
  end

  def test_cell_has_ship
    assert_equal nil, @cell.ship
  end

  def test_cell_is_empty
    assert_equal true, @cell.empty?
  end

  def test_can_place_ship
    @cell.place_ship(@cruiser)
    assert_equal @cruiser, @cell.ship
    assert_equal false, @cell.empty?
  end

  def test_can_be_fired_upon
    @cell.place_ship(@cruiser)
    assert_equal false, @cell.fired_upon?
    @cell.fire_upon
    assert_equal 2, @cell.ship.health
    assert_equal true, @cell.fired_upon?
  end

  def test_cell_has_not_been_fired_upon
    # require "pry"; binding.pry
    assert_equal ".", @cell.render
    # @cell.fire_upon
    # assert_equal "M", @cell.render
    # @cell.place_ship(@cruiser)
    # assert_equal "H", @cell.render
  end
end
