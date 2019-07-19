class RecipeType < ApplicationRecord
  validates :name, presence: true
end
