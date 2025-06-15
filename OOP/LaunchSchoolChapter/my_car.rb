require './vehicle'
require './camper_shell'
class MyCar < Vehicle
  include CamperShell
  def initialize(year, color, model)
    super(year, color, model)
  end
end

my_car = MyCar.new("2010", "Silver", "Ford Focus")
puts my_car
puts MyCar.number_of_vehicles
my_car.pop_latch
my_car.pop_latch

new_car = MyCar.new("2015", "Black", "Jeep")
new_car.pop_latch
my_car.pop_latch
new_car.pop_latch
