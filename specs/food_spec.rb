require("minitest/autorun")
require("minitest/rg")
require_relative("../food")

class FoodTest < MiniTest::Test

  def setup
    @food = Food.new("nachos", 4, 10)
  end

  def test_can_create_food
    assert_equal(Food, @food.class())
  end
end
