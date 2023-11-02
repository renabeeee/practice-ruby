require "./module_store_item.rb"

class Items
  include Shopping
    attr_reader :color, :size, :price
    attr_writer :price
end
