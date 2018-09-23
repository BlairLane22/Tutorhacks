class AddParentToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :parent_email, :string, default: ""
  end
end
