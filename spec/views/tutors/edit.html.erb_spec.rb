require 'rails_helper'

RSpec.describe "tutors/edit", type: :view do
  before(:each) do
    @tutor = assign(:tutor, Tutor.create!(
      :description => "MyText",
      :price => "9.99",
      :gender => "female",
      :subjects => ["Math", "Chemistry"],
      :phone_number => "6138433465"
    ))
  end

  it "renders the edit tutor form" do
    render

    assert_select "form[action=?][method=?]", tutor_path(@tutor), "post" do

      assert_select "textarea[name=?]", "tutor[description]"

      assert_select "input[name=?]", "tutor[price]"
    end
  end
end
