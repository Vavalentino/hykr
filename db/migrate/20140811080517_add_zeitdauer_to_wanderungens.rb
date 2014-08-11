class AddZeitdauerToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :zeitdauer, :integer
    add_index :wanderungens, :zeitdauer
  end
end
