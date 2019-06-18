class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :addresses
  has_many :cards
  has_many :purchase_items
  has_many :carts
  has_many :items, through: :purchase_items
  has_many :cart_items, through: :carts, source: :item
end
