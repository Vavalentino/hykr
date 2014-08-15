class AddDownmeterToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :downmeter, :integer
  end
end
