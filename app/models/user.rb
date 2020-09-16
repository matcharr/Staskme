class User < ApplicationRecord
  after_create :welcome_send

  def welcome_send
  	UserMailer.welcome_email(self).deliver_now
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :enrolments
  has_many :missions, through: :enrolments

end