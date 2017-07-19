feature 'players can enter their names' do
  scenario 'players enter their names' do
    visit ("/")
    fill_in :player_one_name, with: "Sapphire"
    fill_in :player_two_name, with: "Kat"

    click_button "May the battle begin!"
    expect(page).to have_content "Sapphire takes on Kat!!!"
  end
end
