class ChangeColNameInTeams < ActiveRecord::Migration
  def change
  	rename_column :teams, :api_id, :api_team_id
  end
end
