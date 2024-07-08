class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.integer :price_before_tax
      t.references :user, null: false, foreign_key: true
      t.references :service_offer, null: false, foreign_key: true
      t.references :order_details, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true
      t.references :order_item_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
