require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it { should have_one(:tutor)}
    it { should have_one(:student)}

    it { should validate_presence_of(:name)}
  end

  describe "Rank array" do
    it "should contain Tutor and student" do
      Rank = ['Tutor', 'Student']
      expect(Rank).to contain_exactly('Tutor', 'Student')
    end
  end
end
