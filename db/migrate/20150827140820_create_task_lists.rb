class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :task_lists, [:user_id, :created_at]
  end
end
