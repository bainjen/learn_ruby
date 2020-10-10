#class is th mold and objects are what you produce using the mold 

class GoodDog
end

sparky = GoodDog.new 


#a module is a collection of behaviors 
#modules are made usable via mixins
#a module is mixed in to a class using the include method

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("arf!")
bob = HumanBeing.new
bob.speak("hello")

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

#create a new object b y defining a class and calling .new to create an instance 
#modules allow us to group resuable code. use include method to invoke followed by the module name 

module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new