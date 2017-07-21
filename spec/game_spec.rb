require 'game'

describe Game do

  let(:player_1) { double :player, points: 60}
  let(:player_2) { double :player, points: 60 }
  let(:dead_player) { double :player, points: 0, name: "Yulia"}

  subject(:game) {described_class.new(player_1, player_2)}
  subject(:ended_game) {described_class.new(dead_player, player_2)}

it 'has a first player' do
  expect(game.player_1).to eq player_1
end

it 'has a second player' do
  expect(game.player_2).to eq player_2
end

describe '#current_turn' do
  it 'is the turn of player 1 when the game starts' do
    expect(game.current_turn).to eq player_1
  end
end

  context "attack" do
    it "damages the player" do
      expect(player_2).to receive(:reduce_points)
      game.attack(player_2)
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#game_over?' do
    it 'is true if a player has 0 points' do
      expect(ended_game.game_over?).to be true
    end
  end

  describe '#losing_player' do
    it 'outputs the player who has 0 points and so is the loser' do
      expect(ended_game.losing_player).to eq dead_player.name
    end
  end


end
