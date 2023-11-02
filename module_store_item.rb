module Shopping
  attr_reader :color, :size, :price
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
