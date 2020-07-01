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

  def add_dish(name)
    @dishes << name
  end

  def open_for_lunch?
    @opening.to_i < 12 && @opening.to_i > 6 ? true : false
  end

  def menu_dish_names
    @dishes.collect{ |food| food.upcase}
  end

  def announce_closing(x)
    closing = @opening.to_i + x
    if closing > 12
      real_time = (closing - 12).to_s + ":00PM"
      return "#{@name} will be closing at #{real_time}"
    else
      real_time2 = closing.to_s + ":00AM"
      return "#{@name} will be closing at #{real_time2}"
    end
  end


end
