require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../drinks")
require_relative("../food")

class CustomerTest < MiniTest::Test
  def setup
    @drink = Drink.new("Tequila", 5, 7)
    @customer = Customer.new("Bill", 50, 32)
    @food = Food.new("nachos", 4, 10)


  end

  def test_can_create
    assert_equal(Customer, @customer.class())
  end

  def test_customer_buys_drink
    @customer.buys_drink(@drink)
    assert_equal(45, @customer.what_in_wallet)
    assert_equal(7, @customer.how_drunk)
  end

  def test_customer_buys_food
    @customer.buy_food(@food)
    assert_equal(46, @customer.what_in_wallet)
    assert_equal(-10, @customer.how_drunk)
  end
end
