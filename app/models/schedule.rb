class Schedule < ApplicationRecord
	belongs_to :service

	validates :day, presence: true
	validates :morning, presence: true
	validates :evening, presence: true
	validates :night, presence: true
end
