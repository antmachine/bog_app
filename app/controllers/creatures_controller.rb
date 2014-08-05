class CreaturesController < ApplicationController
	def index
		@creatures = Creature.all
		render :index
	end

	def create
		creature = params.require(:creature).permit(:name, :description)
		Creature.create(creature)
		redirect_to "/creatures"
	end

	def show
		@creature_id = params[:id]
		render :show
	end

	def edit
		render :edit
	end

	def update
		creature_id = params[:id]
		creature = Creature.find(creature_id)
		changed_creature = params.require(:creature).permit(:name, :description)
		Creature.update(creature, changed_creature)
		redirect_to '/creatures'
	end

	def delete
		Creature.delete(params[:id])
		redirect_to '/'
	end
end