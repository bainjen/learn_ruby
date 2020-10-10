cars = 100 #sets the variable cars equal to the number 100
space_in_a_car = 4.0 #set variable
drivers = 30
passengers = 90
cars_not_driven = cars - drivers #uses values from other variables to set a new value to this variable
cars_driven = drivers #this variable will be equal to drivers 
carpool_capacity = cars_driven * space_in_a_car 
average_passengers_per_car = passengers / cars_driven

#above will not print anything because there is no puts in front

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."