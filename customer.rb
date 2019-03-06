class Customer
attr_reader :name
attr_accessor :wallet, :age, :drunkness_level

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness_level = 0
  end

  def what_in_wallet
    return wallet
  end

  def how_drunk
    return @drunkness_level
  end

  def buys_drink(drink)
    @wallet -= drink.price
    @drunkness_level += drink.alcohol_level
  end

  def check_age
     return @age >= 18
  end

  def sober_enough?()
    return @drunkness_level < 50
  end

  def buy_food(food)
    @wallet -= food.price
    @drunkness_level -= food.rejuvenation
  end

end
