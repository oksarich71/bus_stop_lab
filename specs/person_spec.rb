require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Jack", 22)
    @person2 = Person.new("Louise", 25)
  end

def test_get_name()
  assert_equal("Jack", @person1.name)
end

def test_get_age()
  assert_equal(25, @person2.age)
end






end
