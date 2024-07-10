# frozen_string_literal: true

# A migration for creating the Tax Rate by Location table
class CreateTaxRateByLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :tax_rate_by_locations do |t|
      t.string :province
      t.integer :current_gst
      t.integer :current_hst
      t.integer :current_pst
      t.integer :current_qst

      t.timestamps
    end
  end
end
