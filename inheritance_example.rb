class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

#### Start Car Class

class Car
  attr_reader :wheel_count, :car_make, :car_model

  def initialize (input_wheel_count, input_car_make, input_car_model)
    @wheel_count = input_wheel_count
    @car_make = input_car_make
    @car_model = input_car_model
  end

  #Don't need these written individually because the attr's are written for read-only ability
  # def wheel_count
  #   @wheel_count
  # end

  # def car_make
  #   @car_make
  # end

  # def car_model
  #   @car_model
  # end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def print_info1
    puts "The car model is #{car_model}." #You can use the attr's OR put @ symbol before car_model to use instance variable
  end
end


class Bicycle < Vehicle
  attr_reader :bicycle_make

  def initialize (input_wheel_count, input_bicycle_make,input_bycycle_type)
    super()
    @bikewheel_count = input_wheel_count
    @bicycle_make = input_bicycle_make
    @bicycle_type = input_bycycle_type
  end

  def ring_bell
    puts "Ring ring!"
  end

  def print_info2
    puts "This #{bicycle_make} bicycle model is a #{@bicycle_type} bike and has #{@bikewheel_count} tires."
    # Using the @ symbol will refer to the instance variable. Non-usage of @ symbol will pull from a def method (if a method is written for getting)
  end
end


## Activate the methods. Each method you want to use willneed to be added. To activate them, give each method a variable and add.new
car1 = Car.new("4","Tesla","Model 3")
bike1 = Bicycle.new("2","Schwinn","Mountain")

# Print the data in the print_info format
car1.print_info1
bike1.print_info2
p bike1.bicycle_make
