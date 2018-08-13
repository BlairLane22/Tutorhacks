require 'rails_helper'

RSpec.describe "tutors/edit", type: :view do
  before(:each) do
    @tutor = assign(:tutor, Tutor.create!(
      :name => "MyString",
      :description => "MyText",
      :price => "9.99",
      :age => 1
    ))
  end

  it "renders the edit tutor form" do
    render

    assert_select "form[action=?][method=?]", tutor_path(@tutor), "post" do

      assert_select "input[name=?]", "tutor[name]"

      assert_select "textarea[name=?]", "tutor[description]"

      assert_select "input[name=?]", "tutor[price]"

      assert_select "input[name=?]", "tutor[age]"
    end
  end
end
