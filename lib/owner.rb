class Owner
  # code goes here
  @@all = []
  @@owners_count = 0
  
  attr_accessor :owner, :cat, :dog, :fish, :name
  
  def initialize(owner)
    @owner = owner
    @pets = {}
    @@all << self
  end
  
  def self.count
    o = self.new 
    o.save
    @@owners_count += 1
    o
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
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