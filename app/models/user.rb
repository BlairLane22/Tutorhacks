class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :tutor, dependent: :destroy
  has_one :student, dependent: :destroy

  validates :name, :email, :password, :password_confirmation, :plan, :age, presence: true


  Plan = ['Tutor ($14.99/month)', "Tutor"], ['Student (Free/month)', "Student"]   # ['Whats shown on screen', "Value saved to database"]

  Age = []
	for i in 1..100
	  Age << i
	end

end
