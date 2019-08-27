class Board

  attr_reader :x_axis, :y_axis, :cells

  def initialize(x_axis = 4, y_axis = 4)
    @x_axis = ("A".."Z").to_a[0..x_axis-1]
    @y_axis =  (1..26).to_a[0..y_axis-1]
    @cells = Hash.new(".")
  end

  def create_cells
    @x_axis.flat_map do |x|
      @y_axis.flat_map do |y|
        @cells["#{x + y.to_s}"] = Cell.new("#{x + y.to_s}")
      end
    end
  end

  def create_cells_to_hash
    new_cells = {}
    create_cells.map do |cell|
      new_cells[cell] = Cell.new(cell)
    end
    new_cells
  end

  def valid_coordinate?(cell)
    @cells.keys.include?(cell)
  end

end
