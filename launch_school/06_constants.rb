#constants are variables we don't want to change
#only require first letter to be upper case but convention is all uppercase

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age             # => 28
puts sparky # => This dog's name is Sparky and is 28 in dog years.

#Note: puts method calls to_s for any argument that is not an array. For an array, it writes on separate lines the result of calling to_s on each element of the array.

#to_s is also called automatically with string interpolation 

#there is a similar method to puts that is called p and it doe not call to_s by default 
# p calls inspect method

p sparky ##<GoodDog:0x000000000093e9a0 @name="Sparky", @age=28>
#same as: 
puts sparky.inspect