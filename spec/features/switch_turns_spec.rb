feature 'switching turns' do
    scenario 'it is the turn of player 1 when the game starts' do
      sign_in_and_play
      expect(page).to have_content "Yulia's turn"
    end

    scenario 'it then changes to the turn of player 2' do
      sign_in_and_play
      click_button "Attack"
      click_link "OK"
      expect(page).not_to have_content "Yulia's turn"
      expect(page).to have_content "Kat's turn"
    end
  end
