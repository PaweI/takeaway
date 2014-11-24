require 'takeaway'

describe Takeaway do

  let (:takeaway) { Takeaway.new  }
  let (:message)  { Message.new   }
  let (:order)    { double :order }
  let (:dish)     { double :dish  }
 
  MY_NUMBER = "+447969959235"

  it 'should receive order form a customer and send message' do
    expect(order).to receive(:paid?)
    expect(takeaway.receive(order, MY_NUMBER)).to eq "Message has been sent"
  end

end 