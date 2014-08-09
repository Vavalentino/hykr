class AddSchwierigkeitsgradIdToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :schwierigkeitsgrad_id, :integer
    add_index :wanderungens, :schwierigkeitsgrad_id
  end
end
