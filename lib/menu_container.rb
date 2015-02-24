module MenuContainer
  def dishes
    @dishes ||= {}
  end

  def list_dishes
    dishes
  end

  def add_dish(dish, cost)
    dishes[dish] = { price: cost }
  end

  def cost(dish)
    @dishes[dish][:price]
  end
end
