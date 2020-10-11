#inheritance is when  class inherits behavior from another class
#the class inheriting is the SUBCLASS. It inherits from the SUPERCLASS
#used to extract common behaviors from classes and move to superclass

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => Hello!
puts paws.speak             # => Hello!

# < represents that GoodFog is inheriting from Animal 
# < gives all Animal methods availability in GoodDog and Cat 