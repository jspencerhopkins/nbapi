# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




SportsDataApi.set_key(:nba, SPORTS_DATA_API_KEY)
schedule = SportsDataApi::Nba.schedule(2014, :REG)

schedule.games.each do |game|
    
    if game.scheduled > "2015-02-20 00:00:00"

    home_city = Team.where(api_team_id: game.home).pluck(:market).first
    home_team = Team.where(api_team_id: game.home).pluck(:name).first
    away_city = Team.where(api_team_id: game.away).pluck(:market).first
    away_team = Team.where(api_team_id: game.away).pluck(:name).first

    Game.create(date: game.scheduled, 
                api_game_id: game.id,
                home_city: home_city,
                home_team: home_team, 
                away_city: away_city,
                away_team: away_team
                )
  end
end