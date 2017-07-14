class Product < ApplicationRecord
  has_many :order_items
  validates :name, :description, :price, presence: true
  validates_numericality_of :price, greater_than: 0
end
