class Tutor < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, :description, :price, :age, presence: true
  validates_numericality_of :price, :age
end
