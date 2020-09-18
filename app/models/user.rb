class User < ApplicationRecord
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now!
  end

	has_many :enrollments
	has_many :missions, through: :enrollments
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end