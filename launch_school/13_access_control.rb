#access modifers are used ti akkiw ir restruct access to a particular snippet, in ruby, they restrict access to methods found in a class
#commonly called METHOD ACCESS CONTROL 

#use modifiers called public, private, protected

#public method: available to anyone using class or object name
#private method: not for use elsewhere and denoted witth private  method call

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  private #anything in this code block will be private 

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
# sparky.human_years  ->this would cause an error

# assume the method definition below is above the "private" keyword

def public_disclosure
  "#{self.name} in human years is #{human_years}"
end

#As of Ruby 2.7, it is now legal to call private methods with a literal self as the caller.

#protected methods:
#from inside of the class, protected methods are accessible like public methods
#from outside of class, they protected methods behave like private methods 

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
fido.a_public_method        # => Will this work? Yes, I'm protected!

# fido.a_protected_method
  # => NoMethodError: protected method `a_protected_method' called for
    #<Animal:0x007fb174157110>