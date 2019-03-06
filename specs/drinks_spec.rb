require("minitest/autorun")
require("minitest/rg")
require_relative("../drinks")
require_relative("../customer")

class DrinksTest < MiniTest::Test
  def setup
    @drink = Drink.new("Cosmopolitan", 7)

    @customer1 = Customer.new("Jenna", 20)
  end

  def test_can_create
    assert_equal(Drink, @drink.class())
  end

end
