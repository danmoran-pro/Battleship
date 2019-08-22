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



  def render
    if empty?
      result = "."
    elsif fired_upon? && empty?
      result = "M"
    end
    result
  end
end






    # (show = false)
    # result = "S"
    # if empty? && show = true
    #   result = "."
    # if fired_upon? && empty?
    #   result = "M"
    # elsif fired_upon? && !empty?
    #   result = "H"
    # determine which order to test in

    # end
    # result
