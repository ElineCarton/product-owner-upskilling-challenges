# TODO: your code goes here
activities = [
  {"name" => "Escape Game", "Category" => "Adventure", "City" => "Paris", "Duration" => "40 min", "number of participants" => "4", "Price" => "120€" },

  {"name" => "Wine Tasting", "Category" => "Food", "City" => "Paris", "Duration" => "90 min", "number of participants" => "15", "Price" => "300€" },

{"name" => "Surf", "Category" => "Sport", "City" => "Hendaye", "Duration" => "120 min", "number of participants" => "5", "Price" => "500" }
]

activities.each do |activity|
  puts "#{activity["name"]} [#{activity["Category"]}]"
  puts "Located in #{activity["City"]}"
  puts "Duration of #{activity["Duration"]}"
  puts "For #{activity["number of participants"]} participants"
  puts "Charged #{activity["Price"]}"

end
