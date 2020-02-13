module RecipesHelper
  def recipe_image url
    url.blank? ? "https://bulma.io/images/placeholders/128x128.png" : url
  end

  def format_budget budget
    case budget
    when "bon marché"
      "- €"
    when "Coût moyen"
      "- €€"
    when "assez cher"
      "- €€€"
    else
      ""
    end
  end

  def budget_options budget
    options_for_select(
      ["bon marché", "Coût moyen", "assez cher"],
      budget
    )
  end

  def difficulty_options difficulty
    options_for_select(
      ["très facile", "facile", "Niveau moyen", "difficile"],
      difficulty
    )
  end

  def tags_options tags
    options_for_select(@tag_names, tags)
  end
end
