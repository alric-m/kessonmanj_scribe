require 'rails_helper'

RSpec.describe Recipe, type: :model do
  
  before(:all) do
    Recipe.destroy_all
    @recipe = create(:tartiflette)
  end
  
  it "is valid with valid attributes" do
    expect(@recipe).to be_valid
  end

  it "is not valid with no author" do
    recipe2 = build(:tartiflette, author: nil)
    expect(recipe2).to_not be_valid
  end
  
  it "is not valid with no name" do
    recipe2 = build(:tartiflette, name: nil)
    expect(recipe2).to_not be_valid
  end
  
end
