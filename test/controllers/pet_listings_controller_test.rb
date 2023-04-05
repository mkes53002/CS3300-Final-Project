require "test_helper"

class PetListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_listing = pet_listings(:one)
  end

  test "should get index" do
    get pet_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_listing_url
    assert_response :success
  end

  test "should create pet_listing" do
    assert_difference('PetListing.count') do
      post pet_listings_url, params: { pet_listing: { date_posted: @pet_listing.date_posted, found_status: @pet_listing.found_status, last_seen_at: @pet_listing.last_seen_at, last_seen_on: @pet_listing.last_seen_on, microchip_status: @pet_listing.microchip_status, owner_contact: @pet_listing.owner_contact, pet_age: @pet_listing.pet_age, pet_name: @pet_listing.pet_name } }
    end

    assert_redirected_to pet_listing_url(PetListing.last)
  end

  test "should show pet_listing" do
    get pet_listing_url(@pet_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_listing_url(@pet_listing)
    assert_response :success
  end

  test "should update pet_listing" do
    patch pet_listing_url(@pet_listing), params: { pet_listing: { date_posted: @pet_listing.date_posted, found_status: @pet_listing.found_status, last_seen_at: @pet_listing.last_seen_at, last_seen_on: @pet_listing.last_seen_on, microchip_status: @pet_listing.microchip_status, owner_contact: @pet_listing.owner_contact, pet_age: @pet_listing.pet_age, pet_name: @pet_listing.pet_name } }
    assert_redirected_to pet_listing_url(@pet_listing)
  end

  test "should destroy pet_listing" do
    assert_difference('PetListing.count', -1) do
      delete pet_listing_url(@pet_listing)
    end

    assert_redirected_to pet_listings_url
  end
end
