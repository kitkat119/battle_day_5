require_relative 'player'

class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_points
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end

  def game_over?
    player_1.points == 0 || player_2.points == 0
  end

  def losing_player
    if player_1.points == 0
      player_1.name
    elsif player_2.points == 0
      player_2.name
    end
  end

  private
  attr_reader :players

end
