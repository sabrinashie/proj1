class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		@pokemon.save
		redirect_to trainer_path id:@pokemon.trainer_id
		if @pokemon.health <= 0
			@pokemon.destroy
		end
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.update level: 1, health: 100, trainer_id: current_trainer.id
		if @pokemon.save
			redirect_to trainer_path id:current_trainer.id
		else
			redirect_to current_trainer
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

end
