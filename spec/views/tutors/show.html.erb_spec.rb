require 'rails_helper'

RSpec.describe "tutors/show", type: :view do
  before(:each) do
    @tutor = assign(:tutor, Tutor.create!(
      :description => "MyText",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end
