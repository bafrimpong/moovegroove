class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable

  has_many :user_activities, class_name: "UserActivity", foreign_key: "user_id"
  has_many :activities, through: :user_activities

  validates :first_name, :last_name, :email, :password, :password_confirmation, :presence => true
  
  # validates :current_password, presence: true,  if: :update
  

end
