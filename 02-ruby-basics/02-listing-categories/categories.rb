categories = ["Adventure", "Sport", "Visits", "Workshops", "Cultural", "Food"
  # TODO: gather the categories of activity
]

puts "Please choose a category"
puts "This is the list :"
categories.each do |category|
  puts category
end

puts "please add a new cat"
newCat = gets.chomp

categories = ["Adventure", "Sport", "Visits", "Workshops", "Cultural", "Food", newCat]

puts "This is the new list :"
categories.sort.each do |category|

  puts category
end

puts categories.size


# TODO: your code goes here
