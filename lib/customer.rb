class Customer
  attr_accessor :name, :age 
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
    
  def waiters
    meals.map do |meal|
      meal.waiter 
    end
end

alex = Customer.new("Alex", 30)
rahcel = Customer.new("Rachel", 27)
dan = Waiter.new("Dan", 3)

rachel.new_meal(dan, 50, 10)
alex.new_meal(dan, 30, 5)

rachel.meals
rachel.meals.length 
Meal.all.length