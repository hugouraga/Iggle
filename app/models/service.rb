class Service < ApplicationRecord
    has_many :schedules, dependent: :destroy
    accepts_nested_attributes_for :schedules, allow_destroy: true

    validates :service, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 500 }
    validates :value, presence: true, length: { maximum: 4 }
    validates :duration, presence: true, length: { maximum: 1 }
    validates :schedules, :associated => true, :presence => true

    belongs_to :professional_user
end
