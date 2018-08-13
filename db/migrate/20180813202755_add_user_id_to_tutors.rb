class AddUserIdToTutors < ActiveRecord::Migration[5.2]
  def change
    add_column :tutors, :user_id, :integer
  end
end
