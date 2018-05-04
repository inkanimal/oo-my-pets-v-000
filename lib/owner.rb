class Owner
  # code goes here
  @@owners = []
  
  attr_accessor :owner, :name 
  attr_reader :species
  
  def initialize(owner, pets = {fishes: [], cats: [], dogs: []})
    @owner = owner
    @pets = pets
    @@owners << self
  end
  
  def self.count
    @@count += 1
  end
  
  def self.owners
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