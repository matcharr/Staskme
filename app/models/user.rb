class User < ApplicationRecord
  after_create :welcome_send

  has_many :enrollments
  has_many :missions, through: :enrollments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end