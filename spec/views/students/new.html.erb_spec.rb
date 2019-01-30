require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :description => "MyText",
      :grade => 12
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "textarea[name=?]", "student[description]"
    end
  end
end
