#yse self for calling stter methods withing the class
#use self to allow ruby to distinguish between initalizing a local variable and calling a setter method
#use self for class method definitions

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
# => #<GoodDog:0x007f83ac062b38 @name="Sparky", @height="12 inches", @weight="10 lbs">

#from within class, using self references the calling object (sparky)
#from within the change_info method, self.name=  acts the same as calling sparky.name= from outside the class
#calling sparky.name= inside the class isnt in scope

# To be clear, from within a class...

# self, inside of an instance method, references the instance (object) that called the method - the calling object. Therefore, self.weight= is the same as sparky.weight=, in our example.

# self, outside of an instance method, references the class and can be used to define class methods. Therefore if we were to define a name class method, def self.name=(n) is the same as def GoodDog.name=(n).

# Thus, we can see that self is a way of being explicit about what our program is referencing and what our intentions are as far as behavior. self changes depending on the scope it is used in, so pay attention to see if you're inside an instance method or not. self is a tricky concept to grasp in the beginning, but the more often you see its use, the more you will understand object oriented programming. If the explanations don't quite make sense, just memorize those two rules above for now.