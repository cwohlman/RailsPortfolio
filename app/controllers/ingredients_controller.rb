class IngredientsController < ApplicationController
	#before_action :signed_in_user, only: [:create, :destroy]
	#efore_action :correct_user, only: :destroy
	before_action :set_ingredient, only: :destroy

	# DELETE /ingredients/1
	def destroy
		@ingredient.destroy
	    respond_to do |format|
	      format.html { redirect_to request.referer }
	      format.json { head :no_content }
	    end
	end
	def create
		@ingredient = Ingredient.new(ingredient_params)
		respond_to do |format|
			if @ingredient.save
				flash[:success] = "Ingredient added!"
				redirect_to request.referer
			else
				flash[:error] = "Failed to add Ingredient"
				redirect_to request.referer
			end
		end
	end
	private
		def set_ingredient
			@ingredient = Ingredient.find(params[:id]);
		end
		def ingredient_params
      		params.require(:ingredient).permit(:name, :recipe_id, :quantity, :unit)
      	end
end
