feature 'game is over' do
  scenario 'Player 2 loses the game' do
    sign_in_and_play
    10.times { attacking }
    click_button "Attack"
    expect(page).to have_content "Kat has lost, BOO HOO"
  end

end
