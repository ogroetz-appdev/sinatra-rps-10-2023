require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample


  if @comp_move == "rock"
    @outcome = "We Tied!"
  elsif @comp_move == "paper"
    @outcome = "We Lost!"
  elsif @comp_move == "scissors"
    @outcome = "We Won!"
  end

  erb :rock
end
