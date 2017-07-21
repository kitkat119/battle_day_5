def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: "Yulia"
  fill_in :player_2_name, with: "Kat"
  click_button "Submit"
end

def attacking
  # p page.current_path
  click_button "Attack"
  # p page.current_path
  # puts page.body
  click_button "OK"
end
