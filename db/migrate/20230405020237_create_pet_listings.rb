class CreatePetListings < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_listings do |t|
      t.string :pet_name
      t.string :owner_contact
      t.boolean :microchip_status
      t.integer :pet_age
      t.date :last_seen_on
      t.string :last_seen_at
      t.boolean :found_status
      t.date :date_posted

      t.timestamps
    end
  end
end
