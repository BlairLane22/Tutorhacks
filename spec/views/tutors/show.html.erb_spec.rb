require 'rails_helper'

RSpec.describe "tutors/show", type: :view do
  before(:each) do
    @tutor = assign(:tutor, Tutor.create!(
      :name => "Name",
      :description => "MyText",
      :price => "9.99",
      :age => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end