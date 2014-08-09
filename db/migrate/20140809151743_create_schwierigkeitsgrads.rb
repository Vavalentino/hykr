class CreateSchwierigkeitsgrads < ActiveRecord::Migration
  def change
    create_table :schwierigkeitsgrads do |t|
      t.string :description

      t.timestamps
    end
  end
end
