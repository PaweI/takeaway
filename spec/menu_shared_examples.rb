require 'spec_helper'
require 'menu_container'

shared_examples 'menu_container' do 

  let(:container) { described_class.new }
  let(:dish) { double :dish }

  before :each do
    container.add_dish(dish, 5)
  end

  it "should add dishes" do
    expect { container.add_dish("squid", 5) }.to change { container.dishes.count }.by 1 
  end

  it 'should list all dishes' do
    expect(container.list_dishes).to eq ({dish => {price: 5}})
  end

  it "should display price of the dish" do
    expect(container.cost(dish)).to eq 5
  end

end