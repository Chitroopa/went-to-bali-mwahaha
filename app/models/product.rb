class Product < ApplicationRecord
  has_many :order_items
  validates :name, :description, :price, presence: true
  validates_numericality_of :price, greater_than: 0
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
