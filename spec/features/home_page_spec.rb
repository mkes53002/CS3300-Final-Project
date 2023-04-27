require "rails_helper"

RSpec.feature "HomePages", type: :feature do
  scenario "The visitor should see pet listings" do
    visit root_path
    expect(page).to have_text("Pet Listings")
  end
end
