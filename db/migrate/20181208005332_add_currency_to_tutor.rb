class AddCurrencyToTutor < ActiveRecord::Migration[5.2]
  def change
    add_column :tutors, :currency, :string
  end
end
