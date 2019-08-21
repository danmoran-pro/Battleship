class Cell

attr_reader :coordinate, :ship

  def initialize(coordinate, ship = nil)
    @coordinate = coordinate
    @ship = ship
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
    if @ship == nil
      return "."
    elsif @ship.length == @ship.health
      false
    else
      true
    end
  end

  def fire_upon
    @ship.health -= 1
  end

  def render
    if fired_upon? == false && empty?
      "."
    elsif
      fired_upon? == true && empty?
      "M"
    else
      fired_upon? == true && empty? == false
      "H"
    end
  end
end
