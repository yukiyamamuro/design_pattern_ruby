require './11.factory/duck'
require './11.factory/algae'

class Pond
  def initialize(num_animals, animal_class, num_plants, plant_class)
    @animal_class = animal_class
    @plant_class = plant_class

    @animals = []
    num_animals.times do |i|
      animal = new_organism(:animal, "動物#{i}")
      @animals << animal
    end

    @plants = []
    num_plants.times do |i|
      plant = new_organism(:plant, "植物#{i}")
      @plants << plant
    end
  end

  def simulate_one_day
    @plants.each { |plant| plant.grow }
    @animals.each { |animal| animal.speak }
    @animals.each { |animal| animal.eat }
    @animals.each { |animal| animal.sleep }
  end

  def new_organism(type, name)
    if type == :animal
      @animal_class.new(name)
    elsif type == :plant
      @plant_class.new(name)
    else
      raise 'Unknown name'
    end
  end
end


pond = Pond.new(3, Duck, 2, Algae)
pond.simulate_one_day