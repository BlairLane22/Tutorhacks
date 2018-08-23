class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :tutor
  has_one :student

  validates :name, presence: true


  Rank = ['Tutor ($19.99)', "Tutor"], ['Student (Free)', "Student"]
end
