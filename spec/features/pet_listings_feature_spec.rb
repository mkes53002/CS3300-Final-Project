require "rails_helper"

RSpec.feature "Pet Listing", type: :feature do
    # Tests update pet listing feature
    context "Update Pet Listing" do
        # Sets up a pet listing to test edits on
        let(:pet_listing) { PetListing.create(pet_name: "Test Pet Name", owner_contact: "Test Owner Contact") }
        
        # Navigates to the edit pet listing page
        before(:each) do
            visit edit_pet_listing_path(pet_listing)
        end

        # Makes sure when a user edits a pet name correctly they get the success page
        scenario "should be successful" do
            within("form") do
                fill_in "Pet Name", with: "New Pet Name"
            end
            click_button "Update Pet Listing"
            expect(page).to have_content("Pet Listing was successfully updated")
        end
 
        # Makes sure when a user forgets a pet name they get an error message
        scenario "should fail" do
            within("form") do
                fill_in "Pet Name", with: ""
            end
            click_button "Update Pet Listing"
            expect(page).to have_content("Pet Name can't be blank")
        end

        # Makes sure when a user edits a owner contact correctly they get the success page
        scenario "should be successful" do
            within("form") do
                fill_in "Owner Contact", with: "New Owner Contact"
            end
            click_button "Update Pet Listing"
            expect(page).to have_content("Pet Listing was successfully updated")
        end
 
        # Makes sure when a user forgets a owner contact they get an error message
        scenario "should fail" do
            within("form") do
                fill_in "Owner Contact", with: ""
            end
            click_button "Update Pet Listing"
            expect(page).to have_content("Owner Contact can't be blank")
        end
    end
        
    # Tests create pet listing feature
    context "Create pet listing" do
        # Navigates to the create pet listing page
        before(:each) do
            visit new_pet_listing_path
        end
        
        # Makes sure when a user forgets a pet name they get an error message
        scenario "should fail" do
            within("form") do
                fill_in "Pet Name", with: ""
            end
            click_button "Create Pet Listing"
            expect(page).to have_content("Pet Name can't be blank")
        end
        
        # Makes sure when a user forgets a owner contact they get an error message
        scenario "should fail" do
            within("form") do
                fill_in "Owner Contact", with: ""
            end
            click_button "Create Pet Listing"
            expect(page).to have_content("Owner Contact can't be blank")
        end
        
        # Makes sure when a user creates a project correctly they get the success page
        scenario "should be successful" do
            within("form") do
                fill_in "Pet Name", with: "Test Pet Name"
                fill_in "Owner Contact", with: "Test Owner Contact"
            end
            click_button "Create Pet Listing"
            expect(page).to have_content("Pet Listing was successfully created")
        end 
    end            
end
