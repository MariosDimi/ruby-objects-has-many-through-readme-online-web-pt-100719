class Waiter
  
  attr_accessor :name, :yrs_experience
  
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
end

sam = Customer.new("Sam", 27)
pat = Waiter.new("Pat", 2)
alex.new_meal(pat, 50, 10)
sam