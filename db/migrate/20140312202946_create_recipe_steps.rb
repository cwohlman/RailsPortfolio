class CreateRecipeSteps < ActiveRecord::Migration
  def change
    create_table :recipe_steps do |t|
      t.string :instructions
      t.float :quantity
      t.string :unit
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
