require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup



    @passengers_array = []

    @bus1 = Bus.new(22, "Ocean Terminal", @passengers_array)

  end


  def test_bus_route()
    assert_equal(22, @bus1.route)
  end

  def test_bus_destination()
    assert_equal("Ocean Terminal", @bus1.destination)
  end

  def test_bus_drives()
    assert_equal("Brum brum", @bus1.drive)

  end

  def test_passengers()
    assert_equal(@passengers_array,
      @bus1.passengers)
  end

  def test_count_passengers()
    assert_equal(0, @bus1.passengers.count)
  end

  def test_bus_pick_up()
    person1 = Person.new("David", 12)
    @bus1.pick_up(person1)
    assert_equal(1, @bus1.passengers.count)
  end

  def test_bus_drop_off()
    person1 = Person.new("David", 12)
    person2 = Person.new("Becky", 15)
    @bus1.pick_up(person1)
    @bus1.pick_up(person2)
    @bus1.drop_off(person1)
    assert_equal(1, @bus1.passengers.count)
  end

  def test_clear_the_bus()
    person1 = Person.new("David", 12)
    person2 = Person.new("Becky", 15)
    @bus1.pick_up(person1)
    @bus1.pick_up(person2)
    @bus1.empty()
    assert_equal(0, @bus1.passengers.count)
  end

end
