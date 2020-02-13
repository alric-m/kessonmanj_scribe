require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  before(:all) do
    Ingredient.destroy_all
    @potato = create(:ingredient)
  end
  
  it "is valid with valid attributes" do
    expect(@potato).to be_valid
  end

  it "is not valid with duplicated name" do
    potato2 = build(:ingredient, name: "potato")
    expect(potato2).to_not be_valid
  end

  it "is not valid with no name" do
    potato2 = build(:ingredient, name: nil)
    expect(potato2).to_not be_valid
  end
end
