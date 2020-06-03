class Item < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders

  validates :title, presence: true, length: { in: 2..30 }
  validates :description, presence: true, length: { in: 10..1000 }
  validates :price, presence: true, length: { in: 0..1000 }
  validates :image_url, presence: true
end
