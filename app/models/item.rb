class Item < ApplicationRecord
  has_many :purchase_items
  has_many :carts
  has_many :users, through: :purchase_items
  has_many :users, through: :carts
end
