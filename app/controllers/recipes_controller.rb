class RecipesController < ApplicationController

  def index
    @tag_names = ActsAsTaggableOn::Tag.order(:name).pluck(:name)
    @recipes = SearchService.new(Recipe)
      .perform_query(params)
      .order("rate DESC NULLS LAST")
      .paginate(page: params[:page], per_page: 12)
  end

end
