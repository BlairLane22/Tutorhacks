require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Associations" do
    it { should have_one(:tutor)}
    it { should have_one(:student)}
  end
  
  describe "Validations" do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password)}
    it { should validate_presence_of(:password_confirmation)}
    it { should validate_presence_of(:plan)}
    it { should validate_presence_of(:age)}
  end
end
