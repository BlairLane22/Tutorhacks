require 'rails_helper'

RSpec.describe "tutors/index", type: :view do
  before(:each) do
    assign(:tutors, [
      Tutor.create!(
        :name => "Name",
        :description => "MyText",
        :price => "9.99",
        :age => 2
      ),
      Tutor.create!(
        :name => "Name",
        :description => "MyText",
        :price => "9.99",
        :age => 2
      )
    ])
  end

  it "renders a list of tutors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
