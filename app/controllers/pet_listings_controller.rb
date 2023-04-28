class PetListingsController < ApplicationController
  before_action :set_pet_listing, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new edit create update destroy]

  # GET /pet_listings or /pet_listings.json
  def index
    @pet_listings = PetListing.all
  end

  # GET /pet_listings/1 or /pet_listings/1.json
  def show
  end

  # GET /pet_listings/new
  def new
    @pet_listing = PetListing.new
  end

  # GET /pet_listings/1/edit
  def edit
  end

  # POST /pet_listings or /pet_listings.json
  def create
    @pet_listing = params.require(:pet_listing).permit(:petname, :owner_contact, :image)
    @pet_listing = PetListing.new(pet_listing_params)

    respond_to do |format|
      if @pet_listing.save
        format.html { redirect_to pet_listing_url(@pet_listing), notice: "Pet listing was successfully created." }
        format.json { render :show, status: :created, location: @pet_listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_listings/1 or /pet_listings/1.json
  def update
    respond_to do |format|
      if @pet_listing.update(pet_listing_params)
        format.html { redirect_to pet_listing_url(@pet_listing), notice: "Pet listing was successfully updated." }
        format.json { render :show, status: :ok, location: @pet_listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_listings/1 or /pet_listings/1.json
  def destroy
    @pet_listing.destroy

    respond_to do |format|
      format.html { redirect_to pet_listings_url, notice: "Pet listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_listing
      @pet_listing = PetListing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_listing_params
      params.require(:pet_listing).permit(:pet_name, :owner_contact, :microchip_status, :pet_age, :last_seen_on, :last_seen_at, :found_status, :date_posted)
    end
end
