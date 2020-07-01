require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:
  def test_it_exists
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_instance_of Restaurant, restaurant
  end

  def test_it_has_opening_time
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal '10:00', restaurant.opening_time
  end

  def test_it_has_name
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal 'Fuel Cafe', restaurant.name
  end

  def test_it_has_dishes
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal [], restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    # skip
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')

    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
  end

  def test_it_can_add_dishes
    # skip
    restaurant = Restaurant.new('16:00', 'Il Poggio')

    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
  end

  def test_if_its_open_for_lunch

    restaurant = Restaurant.new('10:00', 'Johnny Jims')
    restaurant2 = Restaurant.new('1:00', 'Sammy Sams')
    assert_equal restaurant.open_for_lunch?, true
    assert_equal restaurant2.open_for_lunch?, false

  end

  def test_if_it_has_an_exciting_menu

    restaurant2 = Restaurant.new('1:00', 'Sammy Sams')
    restaurant2.add_dish('Burrata')
    restaurant2.add_dish('Pizzetta')
    restaurant2.add_dish('Ravioli')

    assert_equal ["BURRATA", "PIZZETTA", "RAVIOLI"], restaurant2.menu_dish_names
  end

  def test_it_can_announce_closing_time
    restaurant = Restaurant.new("10:00", "Johnny Jims")
    restaurant3 = Restaurant.new("6:00", "Sammy Sams")


    assert_equal "Johnny Jims will be closing at 1:00PM", restaurant.announce_closing(3)
    assert_equal "Sammy Sams will be closing at 8:00AM", restaurant3.announce_closing(2)
  end

end
