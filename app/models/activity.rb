class Activity < ApplicationRecord
    has_many :user_activities, class_name: "UserActivity", foreign_key: "user_id"
    has_many :users, through: :user_activities

    # photograph
    has_one_attached :activity_photograph, dependent: :destroy

    validates :name, presence: true
    validates :description, presence: true
    validate :photograph_is_blank

    private

    # Adds an error message to the model if no image is attached
    # to the `activity photograph` attribute
    def photograph_is_blank

        if ! activity_photograph.attached?
            self.errors.add(:activity_photograph, "has to be uploaded")

        elsif ! activity_photograph.content_type.start_with? 'image/'
            self.errors.add(:activity_photograph, "has to be image")

        elsif activity_photograph.blob.filename.nil? || activity_photograph.blob.filename.blank?
            self.errors.add(:activity_photograph, "has to be uploaded")
        end
    end

end
