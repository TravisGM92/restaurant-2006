class Restaurant

  attr_accessor :opening, :name, :dishes

  def initialize(opening, name)
    @opening = opening
    @name = name
    @dishes = []
  end

  def opening_time
    @opening
  end

  def dishes
    @dishes
  end

  def closing_time(number)
    closed = @opening.to_i + number
    return closed.to_s + ':00'
  end

end
