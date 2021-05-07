require "sinatra"
require "sinatra/link_header"
require "sinatra/reloader" if development?

enable :static

get "/" do
  @activities = [
    # TODO: gather a few activities

    {"name" => "Escape Game", "Category" => "Adventure", "City" => "Paris", "Duration" => "40 min", "number of participants" => "4", "Price" => "120€" },

    {"name" => "Wine Tasting", "Category" => "Food", "City" => "Paris", "Duration" => "90 min", "number of participants" => "15", "Price" => "300€" },

  {"name" => "Surf", "Category" => "Sport", "City" => "Hendaye", "Duration" => "120 min", "number of participants" => "5", "Price" => "500" }
  ]


  erb :index
end

get "/components" do
  erb :components
end
