class Board

  attr_reader :x_axis, :y_axis, :cells

  def initialize(x_axis = 5, y_axis = 5)
    @x_axis = ("A".."Z").to_a[0..x_axis-1]
    @y_axis =  (1..26).to_a[0..y_axis-1]
    @cells = Hash.new(".")
  end

  def create_cells
    @x_axis.flat_map do |x|
      @y_axis.flat_map do |y|
        @cells["#{x + y.to_s}"] = (".")
      end
    end
  end

  def create_cells_to_hash
    create_cells.map do |cell|
      @cells[key] = Cell.new(cell)
    end
  end

end
