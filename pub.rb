class Pub
attr_reader :name, :till, :drinks, :stock

  def initialize(name, till, stock)
    @name = name
    @till = till
    @drinks = []
    @stock = stock
  end

  def stock_the_pub(drink)
    @drinks << drink
  end

  def what_in_till
    return till
  end

  def sell_drink(drink, customer)
    @till += drink.price
    customer.wallet -= drink.price
  end

  def can_we_serve(customer)
    return customer.check_age && customer.sober_enough?
  end

  def stock_value_count()
    stock_value = 0
    for drinks in @stock
      for drink in drinks
        stock_value += drink.price
      end
    return stock_value
  end
  end
end
