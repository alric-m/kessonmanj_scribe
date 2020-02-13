class Recipe < ApplicationRecord

  acts_as_taggable

  has_many :recipes_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipes_ingredients

  validates :name, :author, presence: true
end
