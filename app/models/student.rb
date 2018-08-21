class Student < ApplicationRecord
  belongs_to :user, optional: true, dependent: :destroy

  validates :description, :age, presence: true
  validates_numericality_of :age
end
