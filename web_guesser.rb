require 'sinatra'
require 'sinatra/reloader'

def check_guess(guess)
	if SECRET_NUMBER + 5 < params['guess'].to_i 
		"Way too high!"
	elsif SECRET_NUMBER < params['guess'].to_i 
		"Too high!"
	elsif SECRET_NUMBER - 5 > params['guess'].to_i 
		"Way too low!"
	elsif SECRET_NUMBER > params['guess'].to_i
		"Too low!"
	else
		"You guessed! The number is #{SECRET_NUMBER}"
	end
end

SECRET_NUMBER = rand(100)


get '/' do	
	guess = params['guess']
	message = check_guess(guess)	
	erb :index, :locals => {:message => message}

end