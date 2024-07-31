# frozen_string_literal: true

# A migration for creating the Cart Items table
class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.references :cart, null: false, foreign_key: true
      t.references :service_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
