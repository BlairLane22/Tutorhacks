class AddPhoneNumberToTutor < ActiveRecord::Migration[5.2]
  def change
    add_column :tutors, :phone_number, :string
  end
end
