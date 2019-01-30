require 'rails_helper'

RSpec.describe Tutor, type: :model do
  # before(:each) do
    tutor = FactoryBot.build(:tutor)
  # end

  describe "associations" do
    it { should belong_to(:user)}
  end


  describe "Validations" do
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:price)}

    it { should validate_numericality_of(:price)}
    it { should validate_numericality_of(:phone_number)}
  end

  describe "Creating a tutor" do

  end
end
