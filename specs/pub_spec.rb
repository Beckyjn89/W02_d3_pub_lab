require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../customer")
require_relative("../drinks")

class PubTest < MiniTest::Test
  def setup
    @stock = [@drink1, @drink2, @drink3, @drink4, @drink5]
    @pub = Pub.new("Red Lion", 100, @stock)
    @customer = Customer.new("Jenna", 20, 51)
    @customer2 = Customer.new("Bill", 20, 17)
    @drink1 = Drink.new("Vodka", 5, 40)
    @drink2 = Drink.new("Cider", 3, 5)
    @drink3 = Drink.new("Cider", 3, 5)
    @drink4 = Drink.new("Cider", 3, 5)
    @drink5 = Drink.new("Cider", 3, 5)
  end

  def test_can_create
    assert_equal(Pub, @pub.class())
  end

  def test_does_pub_have_drinks
      test = @pub.stock_the_pub(@drink1)
    assert_equal(1, @pub.drinks.count)
  end

  def test_sell_drink
    test = @pub.sell_drink(@drink2, @customer)
    assert_equal(103, @pub.what_in_till)
    assert_equal(17, @customer.what_in_wallet)
  end



  def test_customer_spends_money
    assert_equal(20, @customer.what_in_wallet)
    test = @customer.buys_drink(@drink1)
    assert_equal(15, @customer.what_in_wallet)
  end

  def test_how_drunk
    test = @customer.buys_drink(@drink1)
    assert_equal(40, @customer.how_drunk)
  end

  def test_sober_enough_drunk
    @customer.buys_drink(@drink1)
    is_sober = @customer.sober_enough?
    assert_equal(true, is_sober)
  end

  def test_sober_enough_drunk___drunk
    @customer.buys_drink(@drink1)
    @customer.buys_drink(@drink1)
    is_sober = @customer.sober_enough?
    assert_equal(false, is_sober)
  end

  def test_can_we_serve
    test = @pub.can_we_serve(@customer2)
    assert_equal(false, test)
  end

  def test_can_we_serve__old_enough
    test = @pub.can_we_serve(@customer)
    assert_equal(true, test)
  end

  def test_can_we_serve__old_enough
    @customer.buys_drink(@drink1)
    @customer.buys_drink(@drink1)
    result = @pub.can_we_serve(@customer)
    assert_equal(false, result)
  end

  def test_stock_count
    assert_equal(5, @pub.stock.count)
  end

  def test_stock_value_count
    result = @pub.stock_value_count
    assert_equal(17, result)
  end
end
