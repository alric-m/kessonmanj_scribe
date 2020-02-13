class RecipesController < ApplicationController

  def index
    @recipes = SearchService.new(Recipe)
      .perform_query(params)
      .order("rate DESC NULLS LAST")
      .paginate(page: params[:page], per_page: 12)
  end

end
