require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :description => "MyText",
        :grade => 12
      ),
      Student.create!(
        :description => "MyText",
        :grade => 12
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
  end
end
