class CreateServiceOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :service_offers do |t|
      t.string :service_offer_name
      t.integer :service_offer_price
      t.text :service_offer_notes
      t.string :google_forms_link
      t.string :caldotcom_link
      t.integer :slot_availabilty
      t.references :user, null: false, foreign_key: true
      t.references :service_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
