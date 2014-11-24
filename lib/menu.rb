class Menu

  attr_reader :dishes

  def initialize
    @dishes = []
  end

  def add(dish)
    dishes << dish
  end

  def cost(dish)
    dish.price
  end

  def describe(dish)
    dish.description
  end
end