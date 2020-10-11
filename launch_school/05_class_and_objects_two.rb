#all previous exercises used instance methods rather than class methods. Class methods can be called directly on the class itself 
#to define a class method, prepend the the method name with self

# def self.what_am_i         # Class method definition
#   "I'm a GoodDog class!"
# end

# Then when we call the class method, we use the class name GoodDog followed by the method name, without even having to instantiate any objects, like this:

# GoodDog.what_am_i          # => I'm a GoodDog class!

#class variables are created using @@ symbols 

class GoodDog
  @@number_of_dogs = 0

  def initialize #this is a constructor 
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs #ex of using class var and class method to track class level detail that does not pertain to individual objects 
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2