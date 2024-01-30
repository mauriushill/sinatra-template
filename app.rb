require "sinatra"
require "sinatra/reloader"
require "http"
require "json"

get("/") do
  erb(:home)
end


get("/holiday") do
  @raw_data = HTTP.get("https://calendarific.com/HOLIDAY_SEASON/v2/holidays")
 
  erb(:holidayfinder)
end
