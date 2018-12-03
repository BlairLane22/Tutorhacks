class Tutor < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  acts_as_punchable

  belongs_to :user, optional: true
  # before_create :activate_user

  validates :description, :price, :gender, :subjects, presence: true
  validates_numericality_of :price

  Gender = ["Male", "Female", "Other"]
  Subjects = ["Math", "Science", "Chemistry", "Physics", "English", "History", "Computer Science", "Art", "Geography"]


  # def activate_user
  #   [:active] = true
  # end
end
