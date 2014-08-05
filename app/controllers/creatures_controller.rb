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
		#p @creature
		render :show
	end

	def edit
		creature_id = params[:id]
		creature = Creature.find(creature_id)
		# Require looks for a specific key in params hash. If not there, it won't work.
		# .update will run a SQL statement
		updated_attributes = params.require(:creature).permit(:name, :description)
		redirect_to "/creatures/#{creature_id}"
	end



end