class Cocktail < ApplicationRecord
  has_many :doses

  # def doses
  #   Dose.where(cocktail_id: self.id)
  # end
  has_many :ingredients, through: :doses
end
