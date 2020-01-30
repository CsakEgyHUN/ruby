class MainController < ApplicationController

  before_action :setrecipies

  def list
  end

  def edit

    recipe = Recipe.where(title: params[:old_name])
    if params[:receipt] != NIL
      i = 0
        params[:receipt].each do |db|
          asd1 = db.map { |i| "#{i}" }.last
          if asd1 == NIL
          else
            if i == 0
              recipe.update(title: asd1)
              break
            end
          end
          i = i + 1
        end

      i = 0
        params[:receipt].each do |db|
          asd2 = db.map { |i| "#{i}" }.last
          if asd2 == NIL
          else
            if i == 1
              recipe.update(description: asd2)
              break
            end
          end
          i = i + 1
        end

      i = 0
      tomb = []
        params[:receipt].each do |db|
          asd3 = db.map { |i| "#{i}" }.last
          if asd3 == NIL
          else
            if i == 2
              tomb.push(Tag.new(name: asd3))
              break
            end
          end
          i = i + 1
        end
      recipe.update(tags: tomb)

    end
  end

  private
  def setrecipies
    @recipes = Recipe.where(user:current_user)

  end

end
