public class Vehicle 
  attr_accessor :color, :year, :model, :speed
  @@number_of_vehicles = 0
  def initialize(year, color, model)
    self.year = year
    self.color = color
    self.model = model
    self.speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def speed_up(speed_change)
    @speed += speed_change
    puts "You push the gas and accelerate #{speed_change} mph."
  end

  def brake(speed_change)
    @speed -= speed_change
    puts "You push the brake and decelerate #{speed_change} mph."
  end

  def shut_off
    @speed = 0
    puts "Let's park this bad boy!"
  end

  def current_speed
    puts "You are now going #{@speed} mph."
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Your new #{new_color} looks awesome!"
  end

  def self.calculate_gas_mileage(speed)
    "50 MPG"
  end

  def to_s
    "A #{color} #{year} #{@model}!"
  end
end