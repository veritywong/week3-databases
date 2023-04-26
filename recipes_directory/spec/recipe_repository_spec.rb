# file: spec/recipe_repository_spec.rb

RSpec.describe RecipeRepository do
  def reset_recipes_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end

  describe RecipeRepository do
    before(:each) do 
      reset_recipes_table
    end
  end

  it "returns all recipes" do
    repo = RecipeRepository.new

    recipes = repo.all
    expect(recipes.length).to eq 5
    expect(recipes.first.id).to eq '1'
    expect(recipes.first.name).to eq 'Stir Fry Noodles'
    expect(recipes.first.average_cooking_time).to eq '30'
    expect(recipes.first.rating).to eq '5'

    expect(recipes.[1].id).to eq '2'
    expect(recipes.[1].name).to eq 'Baked Potato'
    expect(recipes.[1].average_cooking_time).to eq '60'
    expect(recipes.[1].rating).to eq '4'
  end


    # # 2
    # # Get a single recipe
    # repo = RecipeRepository.new

    # recipes = repo.find(1)
    # recipes.id # => 1
    # recipes.name # => 'Stir Fry Noodles'
    # recipes.average_cooking_time # => '30'
    # recipes.rating # => '5'

    # # 3
    # # Get another single recipe
    # repo = RecipeRepository.new

    # recipes = repo.find(3)
    # recipes.id # => 3
    # recipes.name # => 'Carbonara'
    # recipes.average_cooking_time # => '30'
    # recipes.rating # => '4'
end