class Recipe < ApplicationRecord

  acts_as_taggable

  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients

  #validates :rate, presence: true
  #validates :author_tip, presence: true
  validates :budget, presence: true
  #validates :prep_time, presence: true
  validates :name, presence: true
  validates :author, presence: true
  #validates :difficulty, presence: true
  #validates :people_quantity, presence: true
  #validates :cook_time, presence: true
  #validates :total_time, presence: true
  #validates :image, presence: true
  #validates :nb_comments, presence: true
end
  