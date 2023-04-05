json.extract! pet_listing, :id, :pet_name, :owner_contact, :microchip_status, :pet_age, :last_seen_on, :last_seen_at, :found_status, :date_posted, :created_at, :updated_at
json.url pet_listing_url(pet_listing, format: :json)
