require 'sinatra'
require 'sinatra/reloader'

x = rand(101)

get '/hi' do
	
	"SECRET number is #{x}" 
end