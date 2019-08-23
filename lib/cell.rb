class Cell

attr_reader :coordinate, :ship, :fired_upon

  def initialize(coordinate) #render = ".", ship = nil,)
    @coordinate = coordinate
    @ship = nil
    @fired_upon = false
    # @render = render
  end

  def empty?
    @ship.nil?
  end

  def place_ship(ship)
    @ship = ship
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    @ship.hit unless empty?
    @fired_upon = true
  end



  def render(show = false)
    if show == false
      if !fired_upon
        result = "."
      elsif fired_upon? && empty?
        result = "M"
      elsif @ship.sunk? == true
        result = "X"
      elsif fired_upon? && !empty?
        result = "H"
      end
      result
    else show == true && !empty?
      result = "S"
    end
  end
end
