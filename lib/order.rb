require_relative 'menu_container'

class Order
  include MenuContainer

  def initialize
    @paid = false
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