require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../customer")
require_relative("../drinks")

class PubTest < MiniTest::Test
  def setup
    @pub = Pub.new("Red Lion", 100)
    @customer = Customer.new("Jenna", 20)
    @drink1 = Drink.new("Vodka", 5)
    @drink2 = Drink.new("Cider", 3)
  end

  def test_can_create
    assert_equal(Pub, @pub.class())
  end

  def test_does_pub_have_drinks
      test = @pub.stock_the_pub(@drink1)
    assert_equal(1, @pub.drinks.count)
  end

  def test_add_to_till
    test = @pub.add_to_till(@drink2, @customer)
    assert_equal(103, @pub.what_in_till)
    assert_equal(17, @customer.what_in_wallet)
  end

  def test_customer_spends_money
    assert_equal(20, @customer.what_in_wallet)
    test = @customer.buys_drink(@drink1)
    assert_equal(15, @customer.what_in_wallet)
  end



end
