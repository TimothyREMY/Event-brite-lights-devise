class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendances, foreign_key: 'participant_id'
  has_many :events, through: :attendances

  has_many :organisers, foreign_key: 'admin_id', class_name: "Event"

  after_create :send_welcome
  def send_welcome
    UserMailer.welcome_email(self).deliver_now
  end
end

