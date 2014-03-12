class RecipeStepsController < ApplicationController
	#before_action :signed_in_user, only: [:create, :destroy]
	#efore_action :correct_user, only: :destroy
	before_action :set_recipe_step, only: :destroy

	# DELETE /recipe_steps/1
	def destroy
		@recipe_step.destroy
	    respond_to do |format|
	      format.html { redirect_to request.referer }
	      format.json { head :no_content }
	    end
	end
	def create
		@recipe_step = RecipeStep.new(recipe_step_params)
		respond_to do |format|
			if @recipe_step.save
				flash[:success] = "recipe_step added!"
				redirect_to request.referer
			else
				flash[:error] = "Failed to add recipe_step"
				redirect_to request.referer
			end
		end
	end
	private
		def set_recipe_step
			@recipe_step = RecipeStep.find(params[:id]);
		end
		def recipe_step_params
      		params.require(:recipe_step).permit(:instructions, :recipe_id, :ingredient_id, :quantity, :unit)
      	end
end
