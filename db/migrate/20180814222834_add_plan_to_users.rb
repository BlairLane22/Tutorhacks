class AddPlanToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :plan, :string
  end
end
