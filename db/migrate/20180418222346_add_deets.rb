class AddDeets < ActiveRecord::Migration[5.1]
  def change
    add_column :foods, :description, :string
    add_column :foods, :area, :string
  end
end
