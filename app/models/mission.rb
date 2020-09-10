class Mission < ApplicationRecord
	belongs_to :category
	belongs_to :user

	validates :title, presence: true
	validates :title, length: { in: 3..100 }

	validates :description, presence: true
	validates :description, length: { in: 20..200 }

	validates :start_date, presence: true
	validate :in_the_past?

	private

	def in_the_past?
		errors.add(:start_date, message: "The start_date must be in the future") unless start_date > DateTime.now
	end

end
