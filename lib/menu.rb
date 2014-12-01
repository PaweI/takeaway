require_relative 'menu_container'

class Menu
  include MenuContainer

  def describe(dish)
    dish.description
  end
end