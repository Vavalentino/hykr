class AddCodeToSchwierigkeitsgrads < ActiveRecord::Migration
  def change
    add_column :schwierigkeitsgrads, :code, :integer
  end
end
