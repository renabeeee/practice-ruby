class Vehicle
  attr_reader :speed, :direction

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


class Car < Vehicle
  attr_reader :speed, :direction, :make, :model

  def initialize
    super
    #These are the new data points:
    @make = "Tesla"
    @model = "Model 3"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :type, :weight

  def initialize
    super
    #These are the new data points:
    @type = "Mountain"
    @weight = "25 lbs."
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new



p car.accelerate
p bike.accelerate
car.honk_horn # If you put "p" in front, it'll add a new line that says "nil". If you add "puts", it'll add a space. It does this because "puts" (or the print command) is already written in the honk_horn method. It doesn't need it written twice.
bike.ring_bell #Same instance with this call as well since "puts" exists on ring_bell method
p car.make
p car.model
p bike.type
p bike.weight
