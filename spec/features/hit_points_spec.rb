feature 'viewing hit points' do
  scenario "Player one can view player 2's hit points" do
    visit ("/play")
    expect(page).to have_content "Player 2 HP: #{@player_two_hp}"
  end
end
