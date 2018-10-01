class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

<<<<<<< HEAD
  
=======
  # recipe_id  | ingredient_id   | amount
  #   1               1              1tbsp
  #   2               1              1tsp
>>>>>>> server side code
end
