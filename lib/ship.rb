class Ship

  attr_reader :name, :length, :sunk, :health

  def initialize(name, length)
    @name = name
    @length = length
    @health = length
    # @sunk = false
  end

  def sunk?
    @sunk == false if @health >= 0
     # unless @health <= 0
     # end
  end

  def hit
    #method not complete. Will ask instructors
    @health -= 1
     @sunk == true if @health == 0
  end

end
