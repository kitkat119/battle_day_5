require 'player'
describe Player do

  subject(:player_one) {described_class.new(name)}
  subject(:player_two) {described_class.new(name)}
  let(:name) {"Yulia"}
  let(:opponent) {"Kat"}

  it 'returns the name of the Player' do
    expect(player_one.name).to eq name
  end

  it "should return DEFAULT_POINTS" do
    expect(player_one.points).to eq Player::DEFAULT_POINTS
  end

  context "attack" do
    it "damages the player" do
      expect(player_two).to receive(:reduce_points)
      player_one.attack(player_two)
    end

    it 'reduces the player hit points' do
      expect { player_one.reduce_points }.to change { player_one.points }.by(-10)
    end
  end

end
