require 'spec_helper'
require 'order'
require_relative 'menu_shared_examples'

describe Order do
  it_behaves_like 'menu_container'

  let(:order) { Order.new     }
  let(:dish)  { double :dish  }
  let(:dish2) { double :dish2 }

  it 'should show total amount to pay' do
    order.add_dish(dish, 5)
    order.add_dish(dish2, 10)
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
