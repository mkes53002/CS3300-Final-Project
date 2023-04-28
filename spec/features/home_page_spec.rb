require "rails_helper"

RSpec.feature "HomePages", type: :feature do
  scenario "The visitor should see welcome page" do
    visit root_path
    expect(page).to have_text("Want to See Current Lost Pet Listings?")
  end
end
