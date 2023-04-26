class RecipeRepository

    # Selecting all records
    # No arguments
    def all
      # Executes the SQL query:
      # SELECT id, name, genre FROM artists;
  
      # Returns an array of Artist objects.
    end
  
    def find(id)
      # exectures the SQL query:
      # SELECT id, name, genre FROM artists WHERE id = $1
  
      # returns a single Artist object
    end
  
end