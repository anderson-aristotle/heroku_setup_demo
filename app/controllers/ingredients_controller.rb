class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredients.all

    render json: @ingredients
  end
  def show
    @ingredients = Ingredient.find(params[:id])
    render json: @ingredients
end
