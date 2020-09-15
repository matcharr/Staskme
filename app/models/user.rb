class User < ApplicationRecord
  has_many :enrolments
  has_many :missions, through: :enrolments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :missions
end
