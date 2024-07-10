# frozen_string_literal: true

# A migration for creating the Order Item Statuses table
class CreateOrderItemStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :order_item_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
