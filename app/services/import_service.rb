class ImportService
  def initialize path
    @path = path
  end

  def import_recipes
    file = File.read @path
    recipes_list = JSON.parse file

    recipes_list.each do |recipe|
      new_recipe = Recipe.new(
        rate: recipe["rate"],
        author_tip: recipe["author_tip"],
        budget: recipe["budget"],
        prep_time: recipe["prep_time"],
        name: recipe["name"],
        author: recipe["author"],
        difficulty: recipe["difficulty"],
        people_quantity: recipe["people_quantity"],
        cook_time: recipe["cook_time"],
        total_time: recipe["total_time"],
        image: recipe["image"],
        nb_comments: recipe["nb_comments"]
      )

      if recipe["tags"]&.any?
        new_recipe.tag_list.add(recipe["tags"].join(", "), parse: true)
      end

      new_recipe.save!

      ingredients_list = []
      recipe["ingredients"].each do |ingredient_name|
        ingredients_list << Ingredient.find_or_create_by(name: ingredient_name)
      end

      new_recipe.ingredients = ingredients_list
    end
    puts Recipe.count
  end
end
