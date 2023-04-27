require "rails_helper"

RSpec.describe PetListingsController, :type => :controller do
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
