require 'menu'

describe Menu do

  let(:menu) { Menu.new }
  let(:dish) { double name: "dish", price: 5 }
  let(:dish2) { double name: "dish2", price: 10 }

  it 'should list all the dishes available by name' do
    menu.add(dish)
    menu.add(dish2)
    expect(menu.dishes).to eq([dish, dish2])
  end

  it 'should show price of the dish' do
    menu.add(dish)
    expect(menu.cost(dish)).to eq 5
  end

  it 'should show dish description' do
    expect(dish).to receive(:description)
    menu.describe(dish)
  end
end