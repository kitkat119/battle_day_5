require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

run! if app_file == $0

end
