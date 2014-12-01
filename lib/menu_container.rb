module MenuContainer

  def dishes
    @dishes ||= []
  end

  def add(dish)
    dishes << dish
  end

  def cost(dish)
    dish.price
  end

end