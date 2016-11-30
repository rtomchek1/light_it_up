class CreateSaves < ActiveRecord::Migration
  def change
    create_table :saves do |t|
      t.integer :user_id
      t.string :config
      t.integer :num_moves
      t.integer :duration
      t.string :difficulty

      t.timestamps null: false
    end
  end
end
