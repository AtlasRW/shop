class User < ApplicationRecord
  after_create :welcome_send

  has_one :cart
  has_many :orders
  has_many :items, through: :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def welcome_send
      UserMailer.welcome_email(self).deliver_now
  end
  
end
