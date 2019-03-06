class Pub
attr_reader :name, :till, :drinks

  def initialize(name, till, drinks = [])
    @name = name
    @till = till
    @drinks = drinks
  end

  def stock_the_pub(drink)
    @drinks << drink
  end

  def what_in_till
    return till
  end

  def add_to_till(drink, customer)
    @till += drink.price
    customer.wallet -= drink.price
  end

end
