# frozen_string_literal: true

# A migration for creating the Cart table
class CreateCarts < ActiveRecord::Migration[7.1]
  def change
    create_table :carts do |t|
      t.integer :total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
