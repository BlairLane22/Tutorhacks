class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :tutor, dependent: :destroy
  has_one :student, dependent: :destroy

  validates :name, presence: true


  Rank = ['Tutor ($14.99)', "Tutor"], ['Student (Free)', "Student"]   # ['Whats shown on screen', "Value saved to database"]

  user_age = []
  for i in 1..100
    user_age << i
  end

  Age = user_age

end
