module RecipesHelper
  def recipe_image url
    url.blank? ? "https://bulma.io/images/placeholders/128x128.png" : url
  end

  def budget_options
    ["bon marché", "Coût moyen", "assez cher"]
  end

  def difficulty_options
    ["très facile", "Niveau moyen", "facile", "difficile"]
  end

  def tags_options
    ActsAsTaggableOn::Tag.all.collect {|p| [ p.name, p.id ] }
  end
end
