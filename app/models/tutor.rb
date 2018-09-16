class Tutor < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  acts_as_punchable

  belongs_to :user, optional: true
  # before_create :activate_user

  validates :description, :price, :age, :gender, :subjects, presence: true
  validates_numericality_of :price, :age

  Gender = ["Male", "Female", "Other"]
  Subjects = ["Math", "Science", "Chemistry", "Physics", "English", "History", "Computer Science", "Art"]


  # def activate_user
  #   [:active] = true
  # end
end
