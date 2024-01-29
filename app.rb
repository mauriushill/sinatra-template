require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end


get("/holiday") do
  erb(:holidayfinder)
end
