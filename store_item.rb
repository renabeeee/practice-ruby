class Items
  # a.
  attr_reader :color, :size, :price
  # a.
  attr_writer :price

def initialize(item_desc)
    @color = item_desc[:color]
    @price = item_desc[:price]
    @size = item_desc[:size]
  end

def print_info
  puts "The shirt you selected is #{@color}, is a size #{size}, and is on sale for #{@price} dollars."
  end
end

customer1 = Items.new({color:"Green", size:"Medium", price:60})
# this part actually doesn't need brackets or parentheses at all and will still work

# c. Uses the writer method to change value (price)
customer1.price = (80)
# b. Print 3 attributes individually
puts customer1.color
puts customer1.price
puts customer1.size
puts customer1.print_info #considers the print_info method)
