class AddUpmeterToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :upmeter, :integer
  end
end
