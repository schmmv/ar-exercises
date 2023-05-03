require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Loading a subset of stores
# Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

for store in @mens_stores do 
  puts "#{store.name} carries mens apparel and has an annual revenue of #{store.annual_revenue}"
end

@womens_stores_less_than_1M_revenue = Store.where('annual_revenue < ? AND womens_apparel = ?', 1000000, true)

for store in @womens_stores_less_than_1M_revenue do 
  puts "#{store.name} carries womens apparel and has an annual revenue of #{store.annual_revenue}"
end