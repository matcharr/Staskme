class User < ApplicationRecord
  has_many :enrollments
  has_many :missions, through: :enrollments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :missions
end