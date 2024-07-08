class Like < ApplicationRecord
  belongs_to :order_item
  belongs_to :user
end
