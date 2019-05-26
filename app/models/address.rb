class Address < ApplicationRecord
  validates :name, presence: true, length: { maximum: 500 }
  validates :number, presence: true, length: { maximum: 500 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :postal_code, presence: true, length: { maximum: 500 }
  validates :district, presence: true, length: { maximum: 500 }
  validates :city, presence: true, length: { maximum: 500 }
  validates :state, presence: true, length: { maximum: 500 }

  belongs_to :professional_user

end
