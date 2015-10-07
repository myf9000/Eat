class AddUserIdToEats < ActiveRecord::Migration
  def change
    add_column :eats, :user_id, :integer
    add_index :eats, :user_id
  end
end
