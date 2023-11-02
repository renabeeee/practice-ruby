require "./module_store_item.rb"

class Food
include Shopping
  attr_reader :color, :size, :price, :shelf_life
  attr_writer :price

  def initialize(item_desc)
    super
    @shelf_life = item_desc[:shelf_life]
  end
end
