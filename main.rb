require "./module_store_item.rb"
require "./store_item.rb"
require "./food.rb"

customer1 = Items.new({color:"Green", size:"Medium", price:60})
customer2 = Items.new({color:"Black", size:"Large", price:70})

food_item = Food.new({color: "Red", size: "Small", price: 5, shelf_life: "2 weeks"})

food_item.print_info
puts "This food item has a shelf life of #{food_item.shelf_life}." #The shirt you selected is Red, is a size Small, and is on sale for 5 dollars.

customer1.price = (80)
puts customer1.color # "Green"
puts customer1.price # "80" (not "60" because of the attr writer we added)
puts customer1.size  # "Medium"
puts "The cost of Customer 2's shirt is: #{customer2.price}"
customer1.print_info
customer2.print_info
