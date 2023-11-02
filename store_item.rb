class Items
  attr_reader :color, :size, :price
  attr_writer :price


  def initialize(item_desc)
    @color = item_desc[:color]
    @price = item_desc[:price]
    @size = item_desc[:size]
  end
  # This initialize method is an example of a class using a hash. It was written with one argument and symbols because this tells Ruby we would like to pull the data from, specifically, a hash. The symbol becomes the Key for the instance variable (i.e. :color) and the Value is provided when the objects are created (i.e. customer1 = color: "Green" – "Green" is the Value to the Key :color). Writing it in a hash gives you more flexibility to reorder the arguments without breaking the code (arrays must be in order – see employees.rb for an example of a class with an array-style initialize method).


  def print_info
    puts "The shirt you selected is #{@color}, is a size #{size}, and is on sale for #{@price} dollars."
  end
    # This is a method that tells the code what to print.

end


customer1 = Items.new({color:"Green", size:"Medium", price:60})
customer2 = Items.new({color:"Black", size:"Large", price:70})
# This is reformatted with the symbols/Keys + Values (color: "Green") to retrieve the data from the hash we created in the initialize method. This data is only retrievavle because of the attr's added in the class. The formatting in this part actually doesn't need brackets or parentheses at all and will still work.


customer1.price = (80)
# This uses the writer/setter method to change/overwrite the Value in the ':price' Key. It doesn't need to be written as ":price". It just needs to know 1) the object 2) the key minus the ":" 3) the equals sign and 4) the new price Value in parentheses.


puts customer1.color # "Green"
puts customer1.price # "80" (not "60" because of the attr writer we added)
puts customer1.size  # "Medium"
# This will print 3 attributes for one object.

puts "The cost of Customer 2's shirt is: #{customer2.price}"
# This will print one attribute (:price) for another object.

puts customer1.print_info
puts customer2.print_info
# This will print both objects according to the def print_info method


# Exercise: Some of your store items are food, which have a shelf life. Create a class called Food which inherits from your original class and has an additional property of shelf_life.

class Food < Items
attr_reader :shelf_life

  def initialize(item_desc)
    super
    @shelf_life = item_desc[:shelf_life]
  end
end

food_item = Food.new({ color: "Red", size: "Small", price: 5, shelf_life: "2 weeks" })

puts food_item.print_info  # Print the information for the food item
puts "This food item has a shelf life of #{food_item.shelf_life}."
