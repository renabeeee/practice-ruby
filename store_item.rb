class Items
  # a.
  attr_reader :color, :size, :price
  # a.
  attr_writer :price

  def initialize(color, price, size)
    # Instance 1
    @color = color
    # Instance 2
    @price = price
    # Instance 3
    @size = size
  end

def print_info
  puts "The shirt you selected is #{@color}, is a size #{size}, and is on sale for #{@price} dollars."
  end
end

customer1 = Items.new("Green", 60, "Medium")

# c. Uses the writer method to change value (price)
customer1.price = (80)
# b. Print 3 attributes individually
puts customer1.color
puts customer1.price
puts customer1.size
puts customer1.print_info #considers the print_info method)
