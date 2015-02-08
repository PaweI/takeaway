require 'spec_helper'
require 'customer'

describe Customer do

  let(:customer) { Customer.new("Sam", "+447969959235") }
  let(:menu)     { double :menu, dishes: "dish"         }
  let(:order)    { double :order                        }
  let(:dish)     { double :dish                         }

  it 'should be initialized with a name' do
    expect(customer.name).to eq "Sam"
  end

  it 'should be initialized with a number' do
    expect(customer.mobile_number).to eq "+447969959235"
  end

  it 'be able to see all items in the menu' do
    expect(customer.look_at(menu)).to eq "dish"
  end

  it 'be able to choose dishes from the menu and put the into order' do
    expect(order).to receive(:add)
    customer.choose(dish, order)
  end

  it 'be able to pay for order' do
    expect(order).to receive(:receive_money)
    customer.pay(order)
  end

end