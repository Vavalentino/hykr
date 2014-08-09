class CreateWanderungens < ActiveRecord::Migration
  def change
    create_table :wanderungens do |t|
      t.string :description

      t.timestamps
    end
  end
end
