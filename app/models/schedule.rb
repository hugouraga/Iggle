class Schedule < ApplicationRecord
	belongs_to :service

	validates :day, presence: true
	validates :hour_start, presence: true
	validates :hour_end, presence: true
end
