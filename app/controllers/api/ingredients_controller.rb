class Api::IngredientsController < ApplicationController
<<<<<<< HEAD
  before_action: set_indredient, only: [:show, :update, :destroy]
=======
  before_action :set_ingredient, only: [:show, :update, :destroy]
>>>>>>> server side code

  def index
    render json: Ingredient.all
  end

  def show
<<<<<<< HEAD
    render json: @Ingredient
=======
    render json: @ingredient
>>>>>>> server side code
  end

  def create
    ingredient = Ingredient.new(ingredient_params)

    if ingredient.save
      render json: ingredient
    else
      render_error(ingredient)
    end
  end

  def update
<<<<<<< HEAD
    if @ingredient.update(ingredient_params)
      render json: @ingredient
=======
    if @ingredient.update
      render json: @ingredient 
>>>>>>> server side code
    else
      render_error(@ingredient)
    end
  end

  def destroy
    @ingredient.destroy
  end

  private
<<<<<<< HEAD

    def set_indredient
=======
    def set_ingredient
>>>>>>> server side code
      @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
<<<<<<< HEAD
    
=======

>>>>>>> server side code
end
