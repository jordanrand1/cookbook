class Api::RecipeIngredientsController < ApplicationController

  def new
<<<<<<< HEAD
    ingredients = Ingredient.all.map { |i| { name: i.name, id: i.id } }
    render json: ingredients
  end
  
=======
    #[{ name: 'Salt', id: 1 }, { name: 'Pepper', id: 2 }]
    ingredients = Ingredient.all.map { |i| { name: i.name, id: i.id } }
    render json: ingredients
  end

>>>>>>> server side code
  def create
    recipe_ingredient = RecipeIngredient.new(rec_ing_params)

    if recipe_ingredient.save
      render json: recipe_ingredient
    else
      render_error(recipe_ingredient)
    end
  end

  def destroy
    RecipeIngredient.find(params[:id]).destroy
  end

  private
    def rec_ing_params
<<<<<<< HEAD
      params.require(:recipe_ingredient).permit(:amount)
=======
      params.require(:recipe_ingredient)
        .permit(:recipe_id, :ingredient_id, :amount)
>>>>>>> server side code
    end
end
