class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  # i.doses.map { |dose| dose.cocktail }.uniq!
end
