class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :description, :string
      t.column :food_id, :integer

      t.timestamps
    end
  end
end
