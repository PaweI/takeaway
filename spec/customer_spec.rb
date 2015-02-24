require 'spec_helper'
require 'customer'

describe Customer do
  let(:customer) { Customer.new('Sam', '+447969959235') }

  it 'should be initialized with a name' do
    expect(customer.name).to eq 'Sam'
  end

  it 'should be initialized with a number' do
    expect(customer.mobile_number).to eq '+447969959235'
  end
end
