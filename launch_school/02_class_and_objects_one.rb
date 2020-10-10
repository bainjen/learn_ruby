#use classes to create objects 
#states track attributes fro each object
#behaviors are what objects are capable of doing
#objects made from the same class can have different info which can be tracked with instance variables scoped to the object level
#object instances of same class share varibales but hold their own states within those variables 

class GoodDog
  def initialize(name)
    @name = name
  end

  # def get_name
  #   @name
  # end
  def name                  # This was renamed from "get_name"
    @name
  end

  def speak
    "#{@name} says arf!"
  end

  # def set_name=(name)
  #   @name = name
  # end
  def name=(n)              # This was renamed from "set_name="
    @name = n
  end

  def confirm
    puts "This object was initialized!"
  end

end

sparky = GoodDog.new("Sparky")
#Within the constructor (i.e., the initialize method), we then set the instance variable @name to name, which results in assigning the string "Sparky" to the @name instance variable.
fido = GoodDog.new('Fido')

# puts GoodDog
# puts sparky
# puts sparky.speak
# puts sparky.get_name
# puts sparky.set_name = "Spartacus"
# puts sparky.get_name
sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"

#initialize method is a constructor because it is triggered upon creation of new object 

#getter method grabs information and setter method changes/updates 

