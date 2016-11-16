require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'functions.rb'

enable :sessions

get '/' do
	@title = 'Random Pairing'
	erb :get_names
end

post '/set_names' do
	name1 = params[:name1]
	name2 = params[:name2]
	name3 = params[:name3]
	name4 = params[:name4]
	name5 = params[:name5]
	name6 = params[:name6]
	name7 = params[:name7]
	name8 = params[:name8]
	name9 = params[:name9]
	name10 = params[:name10]
	
	names = []
	names.push(name1, name2, name3, name4, name5, name6, name7, name8, name9, name10)

	names.reject!(&:empty?)

	session[:random_pairing] = RandomPairing.new
	erb :results, :locals => { :pairing => session[:random_pairing].first_last_sequence(names) }
end