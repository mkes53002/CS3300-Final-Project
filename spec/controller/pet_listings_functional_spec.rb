require "rails_helper"

RSpec.describe PetListingsController, :type => :controller do
    # This should return the minimal set of attributes required to create a valid
    
    # Logs in the devise user
    login_user

    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
        { :pet_name => "Test Pet Name", :owner_contact => "Test Owner Contact" }
    }

    let(:valid_session) { {} }
    
    describe "test web requests" do
        # Tests that the controller completes GET HTTP request for #index
        context "GET #index" do
            it "returns a success response" do
                get :index
                expect(response).to have_http_status(:ok)
            end
        end

        # Tests that the controller completes GET HTTP request for #show
        context "GET #show" do
            let!(:pet_listing) { PetListing.create(pet_name: "Test Pet Name", owner_contact: "Test Owner Contact") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end

        # Tests that the controller completes GET HTTP request for #edit
        context "GET #edit" do
            let!(:pet_listing) { PetListing.create(pet_name: "Test Pet Name", owner_contact: "Test Owner Contact") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end

        # Tests that the controller completes GET HTTP request for #new
        context "GET #new" do
            it "returns a success response" do
                get new_pet_listing_path
                expect(response).to have_http_status(:ok)
            end
        end

    describe "test POST #create" do
        # Tests that the controller completes POST HTTP request
        context "with valid parameters" do
            it "creates a new Pet Listing" do
                expect {
                    post pet_listings_path, params: { pet_name: "Test Pet Name", owner_contact: "Test Owner Contact") }
            }.to change (PetListing, :count).by(1)
            end

            it "redirects to the created listing" do
                post pet_listings_path, params: { pet_name: "Test Pet Name", owner_contact: "Test Owner Contact") }
                expect(response).to redirect_to(pet_listings_path(PetListing.last))
            end

            context "with invalid parameters" do
                it "does not create a new listing" do
                    expect {
                        post pet_listings_path, params: { pet_name: "Test Pet Name", owner_contact: "Test Owner Contact") }
                }.to change(PetListing, :count).by(0)
                end
                
                it "renders a success response" do
                    post pet_listings_path, params: { (pet_name: "Test Pet Name", owner_contact: "Test Owner Contact") }
                    expect(response).to be_successful
                end
            end
        end

        describe "PATCH #update" do
            context "with valid parameters" do
                let(:new_attributes) {
                    skip(pet_name: "Test Pet Name", owner_contact: "Test Owner Contact")
                }
            
                it "updates the requested article" do
                    pet_listing = PetListing.create(pet_name: "Test Pet Name", owner_contact: "Test Owner Contact")
                    patch pet_listing(pet_listing), params: { pet_listing: new_attributes }
                    pet_listing.reload
                    expect(response).to redirect_to(pet_listing(pet_listing))
                end
            end

            context "with invalid parameters" do
                it "renders a successful response" do
                    pet_listing = PetListing.create
    end
end
