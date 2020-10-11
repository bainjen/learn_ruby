#namespacing means organizing similar classes under a module -- modules can group related classes -- makes it easy to recognized related classes in code 
#reduces collisions of similarly named classes collliding 

#Here is an example of namespacing 

module Mammal 
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end
  
  class Cat 
    def say_name(name)
      p "#{name}"
    end
  end
end

#in a module call classes by appending the class name with to colons ::
budy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')
kitty.say_name('kitty')

#second use case is to use modules as a container for methods which are called module methods.
#example of module method to add to Mammal 

# module Mammal
#   ...

#   def self.some_out_of_place_method(num)
#     num ** 2
#   end
# end

# value = Mammal.some_out_of_place_method(4) =>this way is prefered
#value = Mammal::some_out_of_place_method(4) => this does the same, but not preferred

