require 'rails_helper'

RSpec.describe SearchService do
  
  before(:all) do
    Recipe.destroy_all
    @tartiflette = create(:tartiflette)
    @tartiflette2 = create(:tartiflette2)
    @raclette = create(:raclette)
    @fondue = create(:fondue)
  end
  
  it "is valid with valid attributes" do
    params = { name: "tartif" }
    res = SearchService.new(Recipe).perform_query(params)
    expect(res.to_a).to eq [@tartiflette, @tartiflette2]
  end

  it "is not valid with no author" do
    params = { author: "Le Tartifletteur" }
    res = SearchService.new(Recipe).perform_query(params)
    expect(res.to_a).to eq [@tartiflette, @raclette, @fondue]
  end

  it "is not valid with no name" do
    params = { budget: "cher" }
    res = SearchService.new(Recipe).perform_query(params)
    expect(res.to_a).to eq [@raclette]
  end

  it "is not valid with no name" do
    params = { difficulty: "difficile" }
    res = SearchService.new(Recipe).perform_query(params)
    expect(res.to_a).to eq [@fondue]
  end
  
end
