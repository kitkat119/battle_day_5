feature "attacking" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Yulia attacks Kat"
  end

  scenario "player 2 reduced by 10 after attack" do
    sign_in_and_play
    attacking
    expect(page).not_to have_content "Kat: 60HP"
    expect(page).to have_content "Kat: 50HP"
  end

  scenario "player 2 attacks player 1" do
    sign_in_and_play
    attacking
    click_button "Attack"
    expect(page).to have_content "Kat attacks Yulia"
  end

  scenario "player 1's points are reduced by 10 after being attacked" do
    sign_in_and_play
    2.times { attacking } 
    expect(page).not_to have_content "Yulia: 60HP"
    expect(page).to have_content "Yulia: 50HP"
  end
end
