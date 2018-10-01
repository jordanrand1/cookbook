class Recipe < ApplicationRecord
  validates_presence_of :name

<<<<<<< HEAD
  has_many :recie_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

=======
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  #@recipe.recipe_ingredients
  #@recipe.ingredients.includes(:recipe_ingredients)
>>>>>>> server side code
end
