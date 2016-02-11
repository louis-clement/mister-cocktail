class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient_id, presence: true
  validates :cocktail_id, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
