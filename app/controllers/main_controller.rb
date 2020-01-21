class MainController < ApplicationController
  def list
    @recipes = Recipe.where(user:current_user)
  end


  def edit
  end

end
