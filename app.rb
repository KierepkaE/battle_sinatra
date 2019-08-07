
require 'sinatra/base'
require 'sinatra'
require 'capybara/dsl'
require 'selenium-webdriver'

class Battle < Sinatra::Base

  post '/names' do
    @first_user = params[:first_user]
    @second_user = params[:second_user]
    erb(:names)
  end

  get '/' do
    erb(:main)
  end



  run! if app_file == $0
  set :session_secret, 'super secret'
end