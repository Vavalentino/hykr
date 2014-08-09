class AddUserIdToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :user_id, :integer
    add_index :wanderungens, :user_id
  end
end
