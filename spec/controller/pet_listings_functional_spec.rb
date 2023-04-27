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
    end
end
