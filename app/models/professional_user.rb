class ProfessionalUser < ApplicationRecord
  has_secure_password
  has_one_attached :avatar
  before_save :email_downcase, :name_downcase

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }
  validates :password, length: { minimum: 6 }
  validates :email, presence: true, length: { maximum: 255 },
                                    format: { with: VALID_EMAIL_REGEX },
                                    uniqueness: { case_sensitive: true }
  validates :phone, presence: true, length: { minimum: 10 }, length: { maximum: 11 }
  validates :document, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }

  has_many :services
  has_many :addresses
  private
  def email_downcase
    self.email.downcase!
  end
  def name_downcase
    self.name.downcase!
  end
end
