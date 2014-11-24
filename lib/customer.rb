class Customer

  def look_at(menu)
    menu.dishes
  end

  def choose(dish, order)
    order.add(dish)
  end

  def pay(order)
    order.receive_money
  end
end