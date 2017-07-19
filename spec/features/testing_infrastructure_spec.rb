

feature "Testing infrastructure working" do
  scenario "checking the page works" do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end
