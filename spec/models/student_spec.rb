require 'rails_helper'

RSpec.describe Student, type: :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:age)}

  it { should validate_numericality_of(:age)}
end
