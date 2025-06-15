class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0
  attr_accessor :name, :weight, :height, :age

  def initialize(name, weight, height, age = 1)
    self.name = name
    self.weight = weight
    self.height = height
    self.age = age * DOG_YEARS
    @@number_of_dogs += 1
  end

  def speak(sound)
    puts "#{name} says \"#{sound}\""
  end

  def change_info(name, weight, height)
    self.name = name
    self.weight = weight
    self.height = height
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

end

puts GoodDog.info
puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs
willow = GoodDog.new("Willow", 60, 2.5)
# willow.speak("Give me pets!")

bo = GoodDog.new("Bo", 40, 2.2)
puts GoodDog.total_number_of_dogs
# bo.speak("I'm tired.")

# puts willow.info
# puts bo.info
# puts "But Willow grew!"
# willow.change_info(name, weight, 54)
# puts "Willow's new info: #{willow.info}"