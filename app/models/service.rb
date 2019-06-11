class Service < ApplicationRecord
    belongs_to :address

    validates :service, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 500 }
    validates :value, presence: true, length: { maximum: 4 }
    validates :duration, presence: true, length: { maximum: 1 }
    validates :address_id, presence: true

    belongs_to :professional_user
end
