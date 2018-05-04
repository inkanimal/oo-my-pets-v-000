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
  
  def walk_dogs
    @pets[:dogs].each do |m|
      m.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |m|
      m.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |m|
      m.mood = "happy"
    end
  end
    
  def self.count
    @@owners.length
  end
  
  def sell_pets
    @pets.all.each do |m|
      m.mood = "nervous"
  end
  
  def self.all
    @@owners
  end
  
  def self.reset_all
    @@owners.clear
  end
  
end

