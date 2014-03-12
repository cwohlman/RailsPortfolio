class Recipe < ActiveRecord::Base
	has_many :ingredients, dependent: :destroy
	has_many :recipe_steps
	belongs_to :user
end
