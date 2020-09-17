class User < ApplicationRecord
  has_many :enrollments
  has_many :missions, through: :enrollments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end