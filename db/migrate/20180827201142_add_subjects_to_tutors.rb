class AddSubjectsToTutors < ActiveRecord::Migration[5.2]
  def change
    add_column :tutors, :subjects, :text#, default: [].to_yaml, array: true
  end
end
