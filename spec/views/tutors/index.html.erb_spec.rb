require 'rails_helper'

RSpec.describe "tutors/index", type: :view do
  before(:each) do
    assign(:tutors, [
      Tutor.create!(
        :description => "MyText",
        :price => "9.99",
        :gender => "female",
        :subjects => ["Math", "Chemistry"],
        :phone_number => "6138433465"
      ),
      Tutor.create!(
        :description => "MyText",
        :price => "9.99",
        :gender => "female",
        :subjects => ["Math", "Chemistry"],
        :phone_number => "6138433465"
      )
    ])
  end

  it "renders a list of tutors" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "female".to_s, :count => 2
    assert_select "tr>td", :text => ["Math", "Chemistry"].to_s, :count => 2
    assert_select "tr>td", :text => "6138433465".to_s, :count => 2
  end
end
