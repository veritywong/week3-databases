require 'recipe'

class RecipeRepository

    # Selecting all records
    # No arguments
    def all
      sql = 'SELECT id, name, average_cooking_time, rating FROM recipes;'
      result = DatabaseConnection.exec_params(sql, [])

      recipes = []

      result.each do |record|
        recipe = Recipe.new
        recipe.id = record['id']
        recipe.name = record['name']
        recipe.average_cooking_time = record['average_cooking_time']
        recipe.rating = record['rating']

        recipes << recipe
      end
      return recipes
    end
  
    def find(id)
      # exectures the SQL query:
      # SELECT id, name, genre FROM artists WHERE id = $1
  
      # returns a single Artist object
    end
  
end