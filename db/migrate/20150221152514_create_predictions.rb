class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :game_id
      t.boolean :is_winner_home
      t.integer :wager

      t.timestamps null: false
    end
  end
end
