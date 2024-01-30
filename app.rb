require "sinatra"
require "sinatra/reloader"
require "http"
require "json"

get("/") do
  erb(:home)
end


get("/holiday") do
  raw_data = HTTP.get("https://calendarific.com/api/v2/holidays")
  @api_data = JSON.parse(response.body)
  erb(:holidayfinder)
end
