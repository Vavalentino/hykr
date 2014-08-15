class AddRegionIdToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :region_id, :integer
    add_index :wanderungens, :region_id
  end
end
