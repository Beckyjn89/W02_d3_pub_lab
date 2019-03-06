require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../drinks")

class CustomerTest < MiniTest::Test
  def setup
    @drink = Drink.new("Tequila", 5)
    @customer = Customer.new("Bill", 50)


  end

  def test_can_create
    assert_equal(Customer, @customer.class())
  end

  def test_customer_buys_drink
    test = @customer.buys_drink(@drink)
    assert_equal(45, test)
  end

end
