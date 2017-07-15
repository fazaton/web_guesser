require 'sinatra'
require 'sinatra/reloader'

number = rand(101)


get '/hi' do
	erb :index, :locals => {:number => number}
end