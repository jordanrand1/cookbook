class Recipe < ApplicationRecord
  validates_presence_of :name

  has_many :recie_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

end
