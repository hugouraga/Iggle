class Service < ApplicationRecord
    validates :service, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 500 }
    validates :value, presence: true, length: { maximum: 4 }
    validates :duration, presence: true, length: { maximum: 1 }
end
