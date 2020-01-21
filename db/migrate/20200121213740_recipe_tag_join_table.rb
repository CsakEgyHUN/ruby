class RecipeTagJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :recipes, :tags
  end
end
