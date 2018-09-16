require 'rails_helper'

RSpec.describe Tutor, type: :model do
  describe "Validations" do
    it { should belong_to(:user) }

    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:price)}
    it { should validate_presence_of(:age)}

    it { should validate_numericality_of(:age)}
    it { should validate_numericality_of(:price)}
  end

  describe "If a tutor does not have a profile" do
    it "redirect to the new tutor path" do
      expect(self.testing).to redirect_to new_tutor_path
    end
  end
end
