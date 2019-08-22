class Cell

attr_reader :coordinate, :ship, :fired_upon, :render

  def initialize(coordinate, fired_upon = false) #render = ".", ship = nil,)
    @coordinate = coordinate
    @ship = nil
    @fired_upon = fired_upon
    # @render = render
  end

  def empty?
    if @ship == nil
      true
    else
      false
    end
  end

  def place_ship(ship)
    @ship = ship
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    if !empty?
      @ship.hit
      @fired_upon = true
    else
      @fired_upon = true
    end
  end

  def render(show = false)
    if fired_upon? && empty?
      "M"
    elsif
      @ship.sunk? ? "X" : "H"
    else
      (show && !empty?) ? "S" : "."
    end
  end
end
