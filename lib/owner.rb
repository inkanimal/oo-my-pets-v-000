class Owner
  # code goes here
  @@all = []
  @@count = 0
  
  attr_accessor :owner, :cat, :dog, :fish, :name 
  attr_reader :species
  
  def initialize(owner)
    @owner = owner
    @pets = {}
    @@all << self
  end
  
  def self.count
    o = self.new
    o
    @@count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
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