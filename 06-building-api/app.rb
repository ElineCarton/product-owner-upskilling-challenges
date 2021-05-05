require "sinatra"
require "sinatra/json"
require "sinatra/link_header"
require "sinatra/namespace"
require "sinatra/reloader" if development?

require "sqlite3"

enable :static

DB_PATH = File.join(__dir__, "db/team_building.sqlite")
DB      = SQLite3::Database.new(DB_PATH)
DB.results_as_hash = true

before do
  if request.get_header("CONTENT_TYPE") == "application/json"
    params.merge!(JSON.parse(request.body.read))
  end
end

get "/" do
  json "name" => "Team Building API", "status" => "Running"
end

namespace "/v1" do
  get "/activities" do
    results = DB.execute("select * from activities order by name")
    json "activities" => results
  end

  get "/activities/:id" do
    results = DB.execute("select * from activities where id = #{params["id"]}")
    json "activity" => results.first
  end

end


namespace "/v2" do
  get "/activities" do


    city=params["city"]
    city=params["price"]
    city=params["category"]
    city=params["duration"]
    city=params["participations_count"]
    city=params["name"]

    if city!= nil
    results=DB.execute("select * from activities where city =\"#{city}\" order by name")
    json "activities" => results
    else
      city=params["city"]
      results=DB.execute("select * from activities order by name")
      json "activities" => results

    end
  end

  get "/activities/:id" do
    results = DB.execute("select * from activities where id = #{params["id"]}")
    json "activity" => results.first
  end

end

namespace "/doc" do
  get { erb :"doc/index" }

  namespace "/v1" do
    get "/activities" do
      erb :"doc/v1/activities"
    end
  end

  namespace "/v2" do
    get "/activities" do
      erb :"doc/v2/activities"
    end
  end
end
