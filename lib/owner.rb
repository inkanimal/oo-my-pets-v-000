class Owner
  # code goes here
  @@all = []
  @@owners_count = 0
  
  attr_accessor :owner, :cat, :dog, :fish, :name
  
  def initialize(owner)
    @owner = owner
    @pets = {}
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
end