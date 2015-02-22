class Prediction < ActiveRecord::Base
	belongs_to :user
	belongs_to :game

	# a user can make only one prediction about a given game
  validates :game_id, uniqueness: { scope: :user_id }

  # In general, predictions should not be possible after a game has been played
  validate :prediction_made_before_game_starts












end
