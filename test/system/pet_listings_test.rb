require "application_system_test_case"

class PetListingsTest < ApplicationSystemTestCase
  setup do
    @pet_listing = pet_listings(:one)
  end

  test "visiting the index" do
    visit pet_listings_url
    assert_selector "h1", text: "Pet Listings"
  end

  test "creating a Pet listing" do
    visit pet_listings_url
    click_on "New Pet Listing"

    fill_in "Date posted", with: @pet_listing.date_posted
    check "Found status" if @pet_listing.found_status
    fill_in "Last seen at", with: @pet_listing.last_seen_at
    fill_in "Last seen on", with: @pet_listing.last_seen_on
    check "Microchip status" if @pet_listing.microchip_status
    fill_in "Owner contact", with: @pet_listing.owner_contact
    fill_in "Pet age", with: @pet_listing.pet_age
    fill_in "Pet name", with: @pet_listing.pet_name
    click_on "Create Pet listing"

    assert_text "Pet listing was successfully created"
    click_on "Back"
  end

  test "updating a Pet listing" do
    visit pet_listings_url
    click_on "Edit", match: :first

    fill_in "Date posted", with: @pet_listing.date_posted
    check "Found status" if @pet_listing.found_status
    fill_in "Last seen at", with: @pet_listing.last_seen_at
    fill_in "Last seen on", with: @pet_listing.last_seen_on
    check "Microchip status" if @pet_listing.microchip_status
    fill_in "Owner contact", with: @pet_listing.owner_contact
    fill_in "Pet age", with: @pet_listing.pet_age
    fill_in "Pet name", with: @pet_listing.pet_name
    click_on "Update Pet listing"

    assert_text "Pet listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet listing" do
    visit pet_listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet listing was successfully destroyed"
  end
end
