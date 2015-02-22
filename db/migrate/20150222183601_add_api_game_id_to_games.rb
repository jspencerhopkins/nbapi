class AddApiGameIdToGames < ActiveRecord::Migration
  def change
  	add_column :games, :api_game_id, :string
  end
end
