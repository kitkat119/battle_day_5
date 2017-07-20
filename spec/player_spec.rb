require 'player'
describe Player do

  subject(:player) {described_class.new(name)}
  let(:name) {"Yulia"}

  it 'returns the name of the Player' do
    expect(player.name).to eq name
  end
end
