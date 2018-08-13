class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :age

      t.timestamps
    end
  end
end
