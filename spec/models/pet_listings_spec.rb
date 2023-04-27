require "rails_helper"
	
# Ensures that required elements are present when creating a pet listing
describe "Pet Listing Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    # Checks that the pet name is there
    it "ensures the pet name is present when creating pet listing" do
      pet_listing = PetListing.new(owner_contact: "Test Owner Contact")
      expect(pet_listing.valid?).to eq(false)
    end

    # Checks that the pet listing can't save if the pet name is missing
    it "should not be able to save pet listing when pet name is missing" do
      pet_listing = PetListing.new(owner_contact: "Test Owner Contact")
      expect(pet_listing.save).to eq(false)
    end
	
    # Checks that the owner contact is there
    it "ensures the owner contact is present when creating pet listing" do
      pet_listing = PetListing.new(pet_name: "Testing Name")
      expect(pet_listing.valid?).to eq(false)
    end
  
    # Checks that the pet listing can't save if the owner contact is missing
    it "should not be able to save pet listing when owner contact missing" do
      pet_listing = PetListing.new(pet_name: "Testing Name")
      expect(pet_listing.save).to eq(false)
    end
    
    # Checks that the pet listing can be saved when it has all the required items
    it "should be able to save pet listing when have owner contact and pet name" do
      pet_listing = PetListing.new(pet_name: "Testing Name", owner_contact: "Test Owner Contact")
      expect(pet_listing.save).to eq(true)
    end
  end
end
	
# Ensures that required elements are present when editing a pet listing
describe "Pet Listing Attribute Requirements on Edit", :type => :model do
  context "Edit pet listing" do
    # Sets up pet listing entity to test the edit on  
    before (:each) do
      @pet_listing = PetListing.create(pet_name: "Testing Name", owner_contact: "Owner Contact")
    end
    
    # Checks that the pet name is still filled in after editing
    it "ensures the pet name is present when editing pet listing" do
      @pet_listing.update(:pet_name => "New Pet Name")
      expect(@pet_listing.pet_name == "New Pet Name")
    end
	
    # Checks that the owner contact is still filled in after editing
    it "ensures the owner contact is present when editing pet listing" do
        @pet_listing.update(:owner_contact => "New Owner Contact")
        expect(@pet_listing.owner_contact == "New Owner Contact")
    end
  end
end