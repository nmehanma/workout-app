require 'Rails_helper'

RSpec.feature "User Signup" do
  scenario do
    visit '/'
    click_link "Sign up"
    fill_in "Email", with "john@example.com"
    fill_in "password", with "password"
    fill_in "password confirmation", with "password"
    click_button "Sign up"
    expect(page).to have_content("You have signed up successfully")
  end
end