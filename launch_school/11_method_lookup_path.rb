#here are some modules: 
module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

#telling Animal class to include the Walkable module 
class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

puts "---Animal method lookup---"
puts Animal.ancestors

#OUTPUT 
# ---Animal method lookup---
# Animal
# Walkable
# Object
# Kernel
# BasicObject

# make a new animal

fido = Animal.new
fido.speak                  # => I'm an animal, and I speak!
fido.walk                   # => I'm walking.
# fido.swim                   # => NoMethodError: undefined method `swim' for #<Animal:0x007f92832625b0>
#when ruby traverest the classes and modules it did not find swim 

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

# ---GoodDog method lookup---
# GoodDog
# Climbable
# Swimmable
# Animal
# Walkable
# Object
# Kernel
# BasicObject

#Ruby looks ar the last module we included first 
#the GoodDog objects will have access to Animal methods and Walkable methods as well as all other modules mized in to any of its superclasses
#understanding this can help us tosee where methods are coming from by looking up the path 