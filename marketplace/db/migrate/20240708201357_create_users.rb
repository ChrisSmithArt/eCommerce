# frozen_string_literal: true

# A migration for creating the Users table
class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.text :description
      t.string :address
      t.references :tax_rate_by_location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
