require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)
@store1 = Store.find(1)
@store2 = Store.find(2)

puts "#{@store1.annual_revenue}"

@store1.update(annual_revenue: 600000)

puts "#{@store1.annual_revenue}"
