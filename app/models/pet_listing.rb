class PetListing < ApplicationRecord
    validates :pet_name, :owner_contact, :presence=> true
end
