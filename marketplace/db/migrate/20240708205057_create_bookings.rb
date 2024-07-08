class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.text :booking_description
      t.string :google_forms_link
      t.string :caldotcom_link
      t.references :user, null: false, foreign_key: true
      t.references :service_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
