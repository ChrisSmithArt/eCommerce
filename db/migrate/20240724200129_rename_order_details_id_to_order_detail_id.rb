class RenameOrderDetailsIdToOrderDetailId < ActiveRecord::Migration[7.1]
  def change
    rename_column :order_items, :order_details_id, :order_detail_id
  end
end
