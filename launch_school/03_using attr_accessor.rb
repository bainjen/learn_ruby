#using getter and setter methods takes up space so we can use attr_accessor instead 

class GoodDog
  #track multiple states:
  attr_accessor :name, :height, :weight
  # This one line of code gives us six getter/setter instance methods: name, name=, height, height=, weight, weight=. It also gives us three instance variables: @name, @height, @weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info

sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.

#attr_accessor takes symbol as argument to create getter and setter methods 

#if we only want getter use attr_reader

#if we only want setter user attr_writer


#By removing the @ symbol, we're now calling the instance method, rather than the instance variable.
# def speak
#   "#{name} says arf!"
# end


# Note that prefixing self. is not restricted to just the accessor methods; you can use it with any instance method. For example, the info method is not a method given to us by attr_accessor, but we can still call it using self.info:

# good_dog.rbCopy Code
# class GoodDog
#   # ... rest of code omitted for brevity
#   def some_method
#     self.info
#   end
# end