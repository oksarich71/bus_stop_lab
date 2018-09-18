require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

class BusTest < MiniTest::Test

  def setup

  @bus1 = Bus.new(22, "Ocean Terminal")
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

end
