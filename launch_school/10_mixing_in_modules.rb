#modules can make code DRY
#inheritance works well when a tree structure is pure, but that is not always reality 
#for methods that don't fit squarely in a certain branch, we can group them in a module then mix them into classes that require the behavior 

module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

sparky.swim                 # => I'm swimming!
neemo.swim                  # => I'm swimming!
paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>

#ruby convention adds 'able' to behavior -- not necessary but common