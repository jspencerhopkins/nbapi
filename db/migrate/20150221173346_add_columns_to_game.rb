class AddColumnsToGame < ActiveRecord::Migration
  def change

  	add_column :games, :date, :datetime
  	add_column :games, :home_city, :string
  	add_column :games, :away_city, :string

  end
end
