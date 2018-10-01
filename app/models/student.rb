class Student < ApplicationRecord
  belongs_to :user, optional: true

  if Student.age < 18
    validates :parent_email, presence: true
  end
  validates :description, :grade, presence: true

  Grade = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
end
