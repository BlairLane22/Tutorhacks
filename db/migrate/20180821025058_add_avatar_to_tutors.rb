class AddAvatarToTutors < ActiveRecord::Migration[5.2]
  def change
    add_column :tutors, :avatar, :string
  end
end
