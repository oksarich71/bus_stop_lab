require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

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

end
