require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

STARTING_HP = 70

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]
    redirect to('/play')
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    @player_two_hp = STARTING_HP

    erb :play
  end

run! if app_file == $0

end
