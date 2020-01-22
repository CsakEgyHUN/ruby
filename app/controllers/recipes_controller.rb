class RecipesController < ApplicationController
  def create
    recipe = Recipe.new
    if params[:receipt]["title"] == ""
        flash.now[:alert] = "Cannot create a receipt without title"

    elsif params[:receipt]["text"] == ""

      flash.now[:alert] = "Cannot create a receipt without description"

    else
      recipe.title = params[:receipt]["title"]
      recipe.description = params[:receipt]["text"]
      recipe.user = current_user
      recipe.save!
      redirect_to "/main/list"

    end
  end

  def change
    session[:chosen] = params[:chose]
  end

  def destroy
    Recipe.where(["title = ?",params[:name]]).destroy_all
      redirect_to "/main/list"
  end
end
