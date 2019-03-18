class User < ApplicationRecord
  after_create :welcome_send
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendances
  has_many :gigs, through: :attendances
  has_one_attached :avatar
  has_many :favorites
  has_many :bars, through: :favorites

  accepts_nested_attributes_for :gigs
  #accepts_nested_attributes_for :bars

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end

