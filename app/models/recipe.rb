class Recipe < ActiveRecord::Base
	has_many :ingredients
	has_many :recipe_steps
	belongs_to :user
end
