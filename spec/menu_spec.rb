require 'spec_helper'
require 'menu'
require_relative 'menu_shared_examples'

describe Menu do

  it_behaves_like "menu_container"

  let(:menu)  { Menu.new }
  
end