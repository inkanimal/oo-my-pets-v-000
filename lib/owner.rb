class Owner
  # code goes here
  @@owners = []
  
  attr_accessor :pets, :name 
  attr_reader :species
  
  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@owners << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs(dog_mood)
    @pets[:dog].each do |m|
      m = "happy"
  
  def self.count
    @@owners.length
  end
  
  def self.all
    @@owners
  end
  
  def self.reset_all
    @@owners.clear
  end
  
end

# def self.create
#     s = self.new 
#     s.save
#     s
#   end
  
#   def self.new_by_name(name)
#     s = self.new 
#     s.name = name
#     s
#   end
  
#   def self.create_by_name(name)
#     s = self.new 
#     s.name = name
#     s.save
#     s
#   end