require 'customer'

describe Customer do

  let(:customer) { Customer.new                 }
  let(:menu)     { double :menu, dishes: "dish" }
  let(:order)    { double :order                }
  let(:dish)     { double :dish                 }

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