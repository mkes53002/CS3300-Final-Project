class PetListing < ApplicationRecord
    validates :pet_name, :owner_contact, :presence=> true
    has_one_attached :image, :dependent => :destroy
end
