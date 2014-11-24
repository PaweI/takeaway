require 'order'

describe Order do

  let(:order) { Order.new    }
  let(:dish)  { double :dish, price: 5 } 

  it 'should list all dishes in order' do
    order.add(dish)
    expect(order.dishes).to eq [dish]
  end

  it 'should show their prices' do
    expect(order.cost(dish)).to eq 5    
  end

  it 'should show total amount to pay' do
    dish = { price: 5 }
    dish2 = { price: 10 }
    order.add(dish)
    order.add(dish2)
    expect(order.total_to_pay).to eq 15
  end

  it 'should be able to now if it\'s paid or not' do
    expect(order.paid?).to be false
  end

  it 'should be able to receive money' do
    order.receive_money
    expect(order.paid?).to be true
  end
end