class PlayersController < ApplicationController
	before_action :set_player, only: %i[show edit update destroy]
	def index
		@player = Player.order(:name)
	end
	private

	def set_player
		@player = Player.find(params[:id])
	end
end
