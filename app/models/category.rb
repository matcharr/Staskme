class Category < ApplicationRecord
	has_many :specialisations
	has_many :missions, through: :specialisations
end
