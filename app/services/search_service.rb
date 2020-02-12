class SearchService

  def initialize model_name
    @objects = model_name
  end

  def perform_query params
    params.each do |field, value|
      if :"search_by_#{field}".in? SearchService.instance_methods(false)
        send(:"search_by_#{field}", value)
      end
    end

    @objects
  end

  def search_by_difficulty difficulty
    return @objects if difficulty.blank?
    @objects = @objects.where(difficulty: difficulty)
  end


  def search_by_budget budget
    return @objects if budget.blank?
    @objects = @objects.where(budget: budget)
  end

  def search_by_author author
    return @objects if author.blank?
    @objects = @objects.where(author: author)
  end

  def search_by_name name
    return @objects if name.blank?
    @objects = @objects.where(name: name)
  end

  def search_by_tags tags
    tags.reject!(&:blank?)
    return @objects if tags.empty?
    @objects = @objects.tagged_with(tags.join(", "), parse: true)
  end

  def search_by_ingredient ingredient
    return @objects if ingredient.empty?
    @objects = @objects
      .joins(:ingredients)
      .includes(:ingredients)
      .where("ingredients.name LIKE ?", "%#{ingredient}%")
  end

  def search_by_people_quantity people_quantity
    return @objects if people_quantity.empty?
    @objects = @objects.where(people_quantity: people_quantity)
  end

end
