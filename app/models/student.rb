class Student < ApplicationRecord
  belongs_to :user, optional: true

  validates :parent_email, presence: true if @under_age == true
  # validates :description, :grade, presence: true

  Grade = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
  Gender = ["Male", "Female", "Other"]
end
