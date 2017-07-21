feature 'viewing hit points' do
  scenario "Player one can view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Kat: 60HP'
  end
  scenario "Player two can see player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Yulia: 60HP'
  end
end
