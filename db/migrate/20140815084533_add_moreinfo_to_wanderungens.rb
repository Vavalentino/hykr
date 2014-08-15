class AddMoreinfoToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :moreinfo, :string
  end
end
