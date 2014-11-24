class Order

  attr_reader :dishes, :outstanding_amount

  def initialize
    @dishes = []
    @paid = false
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

  def paid?
    @paid
  end

  def receive_money
    @paid = true
  end
end