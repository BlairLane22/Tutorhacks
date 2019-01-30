require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :description => "MyText",
      :grade => 12
    ))

    @under_age = true
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "textarea[name=?]", "student[description]"
      assert_select "input[name=?]", "student[parent_email]"
    end
  end
end
