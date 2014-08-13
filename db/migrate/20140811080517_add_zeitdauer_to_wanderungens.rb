class AddZeitdauerToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :zeitdauer, :float
    add_index :wanderungens, :zeitdauer
  end
end
