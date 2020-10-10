first, second, third = ARGV
#take whatever is in ARGV and unpackit by assiging it to all of the variables 
puts "Your first variable is: #{first}"
puts  "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# $ ruby ex13.rb first 2nd 3rd
# Your first variable is: first
# Your second variable is: 2nd
# Your third variable is: 3rd

print "Give me a greeting"
greeting = $stdin.gets.chomp

print "How old are you? "
age = $stdin.gets.chomp
print "how tall are you? "
height = $stdin.gets.chomp
print "How much do you weigh? "
weight = $stdin.gets.chomp

puts "#{greeting}! So, you're #{age} old, #{height} tall and #{weight} heavy."