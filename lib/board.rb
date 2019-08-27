class Board

  attr_reader :x_axis, :y_axis, :cells

  def initialize(x_axis = 4, y_axis = 4)
    @x_axis = ("A".."Z").to_a[0..x_axis-1]
    @y_axis =  (1..26).to_a[0..y_axis-1]
    @cells = {}
    create_cells
  end

  def create_cells
    @x_axis.flat_map do |x|
      @y_axis.flat_map do |y|
        @cells["#{x + y.to_s}"] = Cell.new("#{x + y.to_s}")
      end
    end
  end

  # def create_cells_to_hash
  #   new_cells = {}
  #   create_cells.map do |cell|
  #     new_cells[cell] = Cell.new(cell)
  #   end
  #   new_cells
  # end

  def valid_coordinate?(cell)
    @cells.keys.include?(cell)
  end

  def all_letters_consecutive?(positions)
    letter = positions.map do |position|
      position.gsub(/\d/, "")
    end
    # binding.pry
    arr = letter.uniq
    # arr = ['A', 'C']
    arr.each_with_index do |char, idx|
      if char.ord == arr[idx]
        return true
      elsif char.ord+1 != arr[idx+1]
          return false
      end
    end
  end

    # @x_axis.map do |letter|
    #   letter.each_cons(2).ord
    # end

  def all_numbers_consecutive
  end



  def valid_placement?(ship, coordinate)
    ship.length == coordinate.length && coordinate.length == coordinate.count
  end

end
