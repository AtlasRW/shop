class User < ApplicationRecord
  has_many :orders
  has_many :items, through: :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
