require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do 
	erb "hello"
end
 
get '/new' do
	erb :new
end

post '/new' do
	@content = params[:content]
	erb "you tiped: #{@content}"
end