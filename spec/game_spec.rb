require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player }

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


end
