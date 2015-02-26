require_relative 'menu_container'

class Order
  include MenuContainer

  attr_reader :paid

  def initialize
    @paid = false
  end

  def total_to_pay(result = 0)
    dishes.each { |dish| result += dish[1][:price] }
    result
  end

  def receive_money
    @paid = true
  end
end
