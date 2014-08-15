class AddBodyToWanderungens < ActiveRecord::Migration
  def change
    add_column :wanderungens, :body, :string
  end
end
