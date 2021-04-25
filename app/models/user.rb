class User < ApplicationRecord
  has_many :gossips
  has_many :comments

  validates :first_name,
  presence: true,
  length: {in: 3..30}

  validates :last_name,
  presence: true,
  length: {in: 3..30}

  validates :email,
  presence: true,
  uniqueness: true,
  length: {in: 5..30},
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Format de mot de passe non compatible, veuillez réessayer." }

  before_save { self.email = email.downcase }
  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end
end
