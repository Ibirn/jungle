require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js:true do
  
  before(:each) do 
    @user = User.create!(
      first_name: "Miriam",
      last_name: "Rosenblatz",
      email: "crumpets@crunking.com",
      password: "Lindburgh",
      password_confirmation: "Lindburgh"
    )
  end

  scenario "A user with valid login credentials can log in" do
    visit root_path
    expect(page).to have_link("Login")
    click_link "Login"
    expect(page).to have_css("body > main > form")
    fill_in 'email', with: "crumpets@crunking.com"
    fill_in 'password', with: "Lindburgh"
    click_button "Submit"
    expect(page).to have_content("Miriam")
    save_screenshot
  end

end
