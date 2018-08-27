class Tutor < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  acts_as_punchable

  belongs_to :user, optional: true

  validates :description, :price, :age, :gender, presence: true
  validates_numericality_of :price, :age

  Gender = ["Male", "Female", "Other"]
end
