require 'spec_helper'
require 'takeaway'

describe Takeaway do

  let (:takeaway) { Takeaway.new  }
  let (:order)    { double :order }
 
  MY_NUMBER = "+447969959235"

  it 'should receive order form a customer and send message' do
    expect(order).to receive(:paid?)
    expect(takeaway.receive(order, MY_NUMBER)).to eq "Message has been sent"
  end

  it 'sends message to customer once order received' do
    expect(takeaway.send_message_to_client("+447969959235")).to eq "Message has been sent"
  end

end 