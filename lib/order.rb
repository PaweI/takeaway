class Order

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

  def total_to_pay(result = 0)
    dishes.each do |dish| 
      result += dish[:price]
    end
    result
  end






end