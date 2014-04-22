class CreaturesController < ApplicationController
	def index
		@creatures = Creature.all
		render :index
	end

	def new
		render :new
	end

	def create
		creature = params.require(:creature).permit(:name, :description)
		creature = Creature.create(creature)
		redirect_to "/creatures/#{creature.id}"
	end

	def show
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		render :show
	end



end