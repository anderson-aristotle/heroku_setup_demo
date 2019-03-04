# frozen_string_literal: true

class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredients.all

    render json: @ingredients
  end

  def show
    @ingredients = Ingredient.find(params[:id])
    render json: @ingredients
    def destroy
      @ingredients = Ingredients.find(params[:id])
      ingredients.destroy
    end
end
end
