class GamesController < ApplicationController

	def index
		@games = Game.paginate(:page => params[:page])
	end

	def show
		@game = Game.find(params[:id])
	end


end
