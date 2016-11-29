class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :win
      t.integer :num_moves
      t.integer :duration
      t.string :difficulty

      t.timestamps null: false
    end
  end
end
