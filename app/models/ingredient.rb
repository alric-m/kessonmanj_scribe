class Ingredient < ApplicationRecord
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients

  validates :name, presence: true, uniqueness: true
end
  