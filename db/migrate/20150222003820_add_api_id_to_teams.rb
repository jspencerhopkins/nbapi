class AddApiIdToTeams < ActiveRecord::Migration
  def change
  	add_column :teams, :api_id, :string
  end
end
