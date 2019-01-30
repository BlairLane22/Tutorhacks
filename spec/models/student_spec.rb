require 'rails_helper'

RSpec.describe Student, type: :model do
  before(:each) do
    user = FactoryBot.build(:user)
    student = FactoryBot.build(:student)
  end

  describe "Associations" do
    it { should belong_to(:user)}
  end

  describe "Validations" do
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:grade)}
  end

end
