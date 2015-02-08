require 'spec_helper'
require 'menu_container'

shared_examples 'menu_container' do 

  let(:container) { described_class.new }
  let(:dish) { double :dish }

  it "should add dishes" do
    expect { container.add(dish) }.to change { container.dishes.count }.by 1 
  end

  it "should display price of the dish" do
    allow(dish).to receive(:price)
    container.cost(dish)
  end

end