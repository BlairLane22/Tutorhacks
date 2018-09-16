class Student < ApplicationRecord
  belongs_to :user, optional: true

  validates :description, :age, :grade, presence: true
  validates_numericality_of :age

  Grade = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
end
