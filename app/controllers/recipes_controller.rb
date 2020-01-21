class RecipesController < ApplicationController
  def create
    recipe = Recipe.new
    r = params[:receipt]
    recipe.title = params[:receipt]["title"]
    recipe.description = params[:receipt]["text"]
    recipe.save!
    redirect_to "/main/list"
  end
end
