require 'rails_helper'

RSpec.describe "tutors/new", type: :view do
  before(:each) do
    assign(:tutor, Tutor.new(
      :name => "MyString",
      :description => "MyText",
      :price => "9.99",
      :age => 1
    ))
  end

  it "renders new tutor form" do
    render

    assert_select "form[action=?][method=?]", tutors_path, "post" do

      assert_select "input[name=?]", "tutor[name]"

      assert_select "textarea[name=?]", "tutor[description]"

      assert_select "input[name=?]", "tutor[price]"

      assert_select "input[name=?]", "tutor[age]"
    end
  end
end
