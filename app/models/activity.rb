class Activity < ApplicationRecord
    has_many :user_activities, class_name: "UserActivity", foreign_key: "user_id"
    has_many :users, through: :user_activities
end
