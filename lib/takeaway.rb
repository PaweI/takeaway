require_relative "message"

class Takeaway

  def initialize
    @orders = []
  end


  def receive(order, customer_number)
    @orders << order if order.paid?
    Message.new.send_message_to_client(customer_number)
  end
end