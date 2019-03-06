class Customer
attr_reader :name
attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def what_in_wallet
    return wallet
  end

  def buys_drink(drink)
    @wallet -= drink.price
  end

end
