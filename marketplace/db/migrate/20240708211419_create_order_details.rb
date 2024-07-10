# frozen_string_literal: true

# A migration for creating the Order Details table
class CreateOrderDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :order_details do |t|
      t.integer :time_of_sale_gst
      t.integer :time_of_sale_hst
      t.integer :time_of_sale_pst
      t.integer :time_of_sale_qst
      t.string :stripe_item_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
