class Student < ApplicationRecord
  belongs_to :user

  validates :description, presence: true
  validates_numericality_of :age
end
