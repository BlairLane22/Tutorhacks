class Tutor < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :user, optional: true, dependent: :destroy

  validates :description, :price, :age, presence: true
  validates_numericality_of :price, :age
end
